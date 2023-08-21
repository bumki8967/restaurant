package com.project.restaurant.bbs;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.UUID;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.JsonObject;
import com.project.restaurant.util.WebHelper;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Controller
public class ArtclController {
	
	@Autowired
	private BbsService bbsService;

	@Autowired
	private WebHelper web;
	
	@Autowired
	private HttpServletRequest request;
	
	@Autowired
	private HttpServletResponse response;
	
	/**
	 * 게시글 리스트
	 * @param board
	 * @return
	 */
	@RequestMapping("/{board}/artclList")
	public ModelAndView artclList(@PathVariable("board") String board) {
		
		ModelAndView mav = new ModelAndView(board + "/artclList");
		
		List<BbsArtcl> artclList = bbsService.getArtclList();
		
		mav.addObject("artclList", artclList);
		
		return mav;
	}
	
	
	/**
	 * 게시글 상세보기 화면
	 * @param board
	 * @param artcl
	 * @return
	 */
	@RequestMapping("/{board}/artclDetailView")
	public ModelAndView artclDetailView(@PathVariable("board") String board, BbsArtcl artcl) {
		
		ModelAndView mav = new ModelAndView(board + "/artclDetailView");
		
		return mav;
	}
	
	/**
	 * 게시글 작성 화면
	 * @param board
	 * @return
	 */
	@RequestMapping("/{board}/artclRegistView")
	public ModelAndView artclRegistView(@PathVariable("board") String board) {
		
		ModelAndView mav = new ModelAndView(board + "/artclRegistView");
		
		return mav;
	}
	
	
	/**
	 * 게시글 작성
	 * @param board
	 * @param artcl
	 */
	@RequestMapping("/{board}/artclRegist.do")
	public String artclRegist(@PathVariable("board") String board, BbsArtcl artcl, @RequestParam(value = "img_Origin_Nm", required = false) MultipartFile imgUploadFile) {
		
		System.out.println("artclRegist	Start!!!");

		System.out.println("===================================");
		System.out.println("content		::		" + artcl.getContent());
		System.out.println("IP		::		" + web.getClientIP(request));
		System.out.println("===================================");
		
		artcl.setIp(web.getClientIP(request));
		
		bbsService.artclRegist(artcl);
		
		System.out.println("artcl	Type	::	" + artcl.getType());
		
		System.out.println("artclRegist	End!!!");
		
		return "redirect:/{board}/artclList";
	}
	
	/**
	 * 게시글 수정 화면
	 * @param board
	 * @param artcl_Seq
	 * @return
	 */
	@RequestMapping("/{board}/artclUpdateView")
	public ModelAndView artclEditView(@PathVariable("board") String board, @RequestParam(value = "artcl_Seq") int artclSeq) {
		
		ModelAndView mav = new ModelAndView(board + "/artclUpdateView");
		
		BbsArtcl artcl = bbsService.selectByArtclSeq(artclSeq);
		
		mav.addObject("artcl", artcl);
		
		return mav;
	}
	
	// 22.11.16 게시글 수정 메소드 개발 미완료
	/**
	 * 게시글 수정
	 * @param board
	 * @param artcl
	 * @return
	 * @throws IOException 
	 */
//	@RequestMapping("/{board}/artclUpdate.do")
//	public String artclUpdate(@PathVariable("board") String board, BbsArtcl artcl, @RequestParam(value = "artcl_Seq") int artcl_Seq) {
//		
//		System.out.println("Controller artclUpdate	Start!!!!");
//		System.out.println("Controller artclUpdate	::	" + artcl);
//		System.out.println("Controller artclUpdate	::	" + artcl.getArtcl_Seq());
//		
//		bbsServiceImpl.artclUpdate(artcl);
//		
//		System.out.println("Controller artclUpdate	End!!!!");
//		
//		return "redirect:/{board}/artclList";
//	}
	
	
	/**
	 * CKEditor 이미지 업로드
	 * @param board
	 * @param artcl
	 * @param request
	 * @param response
	 * @param multiFile
	 * @return
	 * @throws IOException
	 */
	@RequestMapping("/{board}/imageUpload.do")
	@ResponseBody
	public void editorImgUpload(@PathVariable("board") String board, BbsArtcl artcl, MultipartHttpServletRequest multiFile) throws IOException {
		
		System.out.println("Controller	imgUpload	Start!!!!");
		
		// Json 객체 생성
		JsonObject json = new JsonObject();
		
		// Json 객체를 출력하기 위해 PrintWriter 생성
		PrintWriter printWriter = null;
		OutputStream out = null;

		// 파일을 가져오기 위해 MultipartHttpServletRequest의 getFile 메소드 사용
		MultipartFile file = multiFile.getFile("upload");
		
		// 폴더 생성 시 날짜로 구분하기 위해 사용
		LocalDate now = LocalDate.now();
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyyMMdd");
		String today = now.format(formatter);
		
		// 파일이 비어있지 않고 (비어 있다면 null 반환)
		if (file != null) {
			// 파일 사이즈가 0보다 크고, 파일이름이 공백이 아닐때
			if(file.getSize() >0 && StringUtils.isNotBlank(file.getName())) {
				if(file.getContentType().toLowerCase().startsWith("image/")) {
					try {
						// 파일 이름 설정
						String fileName = file.getOriginalFilename();
						// 바이트 타입설정
						byte[] bytes = file.getBytes();
						// 파일이 실제로 저장되는 경로
						String uploadPath = request.getSession().getServletContext().getRealPath("/image/bbs/" + today + "/"); //저장경로
						File uploadFile = new File(uploadPath);
						
			            if(!uploadFile.exists()) {
			            	uploadFile.mkdir();
			            }
						
						// 파일이름을 랜덤하게 생성
						String fileName2 = UUID.randomUUID().toString();
						uploadPath = uploadPath + "/" + fileName2 + fileName;
						
						out = new FileOutputStream(new File(uploadPath));
			            out.write(bytes);
			            
			            // 클라이언트에 이벤트 추가
			            printWriter = response.getWriter();
			            response.setContentType("text/html");
			            
			            // 파일이 연결되는 Url 주소 설정
			            String fileUrl = request.getContextPath() + "/image/bbs/" + today +	"/" + fileName2 + fileName;
			            
			            // 생성된 Json 객체를 이용해 파일 업로드 + 이름 + 주소를 CkEditor에 전송
			            json.addProperty("uploaded", 1);
			            json.addProperty("fileName", fileName);
			            json.addProperty("url", fileUrl);
			            
			            printWriter.print(json);
					} catch (IOException e) {
						e.printStackTrace();
					} finally {
						if (out != null) {
							out.close();
						}
						if (printWriter != null) {
							printWriter.close();
						}
					}
				}
			}
		}
		
	}
	
}
