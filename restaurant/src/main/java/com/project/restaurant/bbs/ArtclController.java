package com.project.restaurant.bbs;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ArtclController {
	
	@Autowired
	private BbsServiceImpl bbsServiceImpl;

	
	/**
	 * 게시글 리스트
	 * @return
	 */
	@RequestMapping("/{board}/artclList")
	public ModelAndView artclList(@PathVariable("board") String board) {
		
		ModelAndView mav = new ModelAndView(board + "/artclList");
		
		List<BbsArtcl> artclList = bbsServiceImpl.getArtclList();
		
		mav.addObject("artclList", artclList);
		
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
	public String artclRegist(@PathVariable("board") String board, BbsArtcl artcl) {
		
		bbsServiceImpl.artclRegist(artcl);
		
		return "redirect:/{board}/artclList";
	}
	
	/**
	 * 게시글 수정 화면
	 * @param board
	 * @param artcl_Seq
	 * @return
	 */
	@RequestMapping("/{board}/artclUpdateView")
	public ModelAndView artclEditView(@PathVariable("board") String board, @RequestParam(value = "artcl_Seq") int artcl_Seq) {
		
		ModelAndView mav = new ModelAndView(board + "/artclUpdateView");
		
		BbsArtcl artcl = bbsServiceImpl.selectByArtclSeq(artcl_Seq);
		
		mav.addObject("artcl", artcl);
		
		return mav;
	}
	
	// 22.11.16 게시글 수정 메소드 개발 미완료
	/**
	 * 게시글 수정
	 * @param board
	 * @param artcl
	 * @return
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
	
	
	
	@RequestMapping("/{board}/imgUpload.do")
	public String imgUpload(@PathVariable("board") String board, BbsArtcl artcl, HttpServletRequest request, HttpServletResponse response, MultipartHttpServletRequest multiFile) {
		
		System.out.println("Controller	imgUpload	Start!!!!");
		
//		JsonObject json = new JsonObject();
//		PrintWriter printWriter = null;
//		OutputStream out = null;
		MultipartFile file = multiFile.getFile("upload");
		String contextRoot = new HttpServletRequestWrapper(request).getRealPath("/");
		String fileRoot;
		
		if (file.getSize() > 0) {
			System.out.println("contextRoot		::	" + contextRoot);
			fileRoot = contextRoot + "1";
			File imgDir = new File(fileRoot);
			System.out.println("contextPath		::	" + fileRoot);
			
			if (!imgDir.exists()) {
				System.out.println("폴더생성!");
				imgDir.mkdir();
			}
		}
		
		System.out.println("Controller	imgUpload	End!!!!");
		
		return null;
	}
}
