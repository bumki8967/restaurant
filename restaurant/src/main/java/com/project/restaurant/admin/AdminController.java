package com.project.restaurant.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.project.restaurant.user.User;
import com.project.restaurant.user.UserServiceImpl;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private UserServiceImpl userServiceImpl;

	/**
	 * 관리자 로그인 화면
	 * @return
	 */
	@RequestMapping("/loginView")
	public ModelAndView admin() {
		
		ModelAndView mav = new ModelAndView("/admin/loginView");
		
		return mav;
	}
	
	/**
	 * 관리자 메인 페이지 & 회원관리
	 * @return
	 */
	@RequestMapping("/index")
	public ModelAndView adminIndex() {
		
		ModelAndView mav = new ModelAndView("/admin/index");

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
	
	
	@RequestMapping("/userEdit.do")
	public String userEdit(User user, @RequestParam(value = "user_seq") int user_seq) {
		
		userServiceImpl.updateUserData(user);
		
		return "redirect:/admin/index";
	}
	
}
