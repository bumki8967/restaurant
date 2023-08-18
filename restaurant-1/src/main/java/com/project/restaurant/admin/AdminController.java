package com.project.restaurant.admin;

import java.io.IOException;
import java.util.List;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.streaming.SXSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.project.restaurant.bbs.BbsServiceImpl;
import com.project.restaurant.user.User;
import com.project.restaurant.user.UserServiceImpl;

import jakarta.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private UserServiceImpl userServiceImpl;
	
	@Autowired
	private BbsServiceImpl bbsServiceImpl;

	/**
	 * 관리자 로그인 화면
	 * @return
	 */
	@RequestMapping("/loginView")
	public ModelAndView admin() {
		
		ModelAndView mav = new ModelAndView("/admin/loginView");
		
		return mav;
	}
	
	
	/*************		회원관리		***************/
	
	/**
	 * 관리자 메인 페이지 & 회원관리
	 * @return
	 */
	@RequestMapping("/index")
	public ModelAndView adminIndex() {
		
		ModelAndView mav = new ModelAndView("/admin/index");

		return mav;
	}
	
	
	@RequestMapping("/userList")
	public ModelAndView userList() {
		
		ModelAndView mav = new ModelAndView("/admin/userList");
		
		List<User> userList = userServiceImpl.selectUserAll();
		
		mav.addObject("userList", userList);
		
		return mav;
	}
	
	/**
	 * 회원탈퇴
	 * @param user_seq
	 * @return
	 */
	@RequestMapping("/userDelete.do")
	public String userDelete(@RequestParam(value = "user_seq") int user_seq) {
		
		userServiceImpl.deleteUser(user_seq);
		
		return "redirect:/admin/index";
	}
	
	/**
	 * 선택회원 탈퇴
	 * @param valueArr
	 * @return
	 */
	@RequestMapping("/selectUserDelete.do")
	@ResponseBody
	public String selectUserDelete(@RequestParam(value = "valueArr") int[] valueArr) {
		
		for (int i = 0; i < valueArr.length; i++) {
			userServiceImpl.deleteUser(valueArr[i]);
		}
		
		return "redirect:/admin/index";
	}
	
	
	/**
	 * 회원 수정페이지
	 * @param user_seq
	 * @return
	 */
	@RequestMapping("/userEditView")
	public ModelAndView userEditView(@RequestParam(value = "user_seq") int user_seq) {
		
		ModelAndView mav = new ModelAndView("/admin/userEditView");
		
		User user = userServiceImpl.selectByUserSeq(user_seq);
		
		mav.addObject("user", user);
		
		return mav;
	}
	
	/**
	 * 회원 수정
	 * @param user
	 * @param user_seq
	 * @return
	 */
	@RequestMapping("/userEdit.do")
	public String userEdit(User user, @RequestParam(value = "user_seq") int user_seq) {
		
		userServiceImpl.updateUserData(user);
		
		return "redirect:/admin/index";
	}
	
	
	
	
	
	
	
	
	
	/*************		게시판관리		***************/
	
	/**
	 * 게시판 리스트
	 * @return
	 */
	@RequestMapping("/bbsSetupList")
	public ModelAndView bbsSetupListView() {
		
		ModelAndView mav = new ModelAndView("/admin/bbsSetupList");
		
		return mav;
	}
	
	
	
	@RequestMapping("/excelDown.do")
	public void excelDownload(@RequestParam(value = "rowCheck", required = false) int[] seqArr,
								HttpServletResponse response) throws IOException {
		
		Workbook workbook = new SXSSFWorkbook();
		Sheet sheet = workbook.createSheet();
		List<User> userList = null;
//		ArrayList<User> userList = null;
		System.out.println("ExcelDown		::	" + seqArr);
		
		int rowIndex = 0;
		int j = 1;
		
		Row headerRow = sheet.createRow(rowIndex++);
		
		Cell headerCell1 = headerRow.createCell(0);
		headerCell1.setCellValue("번호");
		
		Cell headerCell2 = headerRow.createCell(1);
		headerCell2.setCellValue("이름");
		
		Cell headerCell3 = headerRow.createCell(2);
		headerCell3.setCellValue("핸드폰");
		
		
		
		for (int i = 0; i < seqArr.length; i++) {
			userList = userServiceImpl.getUserListByUserSeq(seqArr[i]);
			System.out.println("row		:	" + seqArr[i]);
			System.out.println("List	1		::	" + userList);
			
			for (User user : userList) {
				
				Row bodyRow = sheet.createRow(rowIndex++);
				System.out.println("userNm	::	" + user.getName());
				System.out.println("userTel	::	" + user.getTel());
				
				// 번호
				Cell bodyCell1 = bodyRow.createCell(0);
				bodyCell1.setCellValue(j);
				j++;
				
				// 이름
				Cell bodyCell2 = bodyRow.createCell(1);
				bodyCell2.setCellValue(user.getName());
				
				// 핸드폰
				Cell bodyCell3 = bodyRow.createCell(2);
				bodyCell3.setCellValue(user.getTel());
			}
		}
		
		System.out.println("List	2		::	" + userList);
		
		
		
		
		response.setContentType("ms-vnd/excel");
		response.setHeader("Content-Disposition", String.format("attachment;filename=test.xlsx"));
		
		workbook.write(response.getOutputStream());
		workbook.close();
		
		
	}
	
}
