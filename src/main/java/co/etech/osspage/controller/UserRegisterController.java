package co.etech.osspage.controller;

import javax.inject.Inject; 

import org.mindrot.jbcrypt.BCrypt; 
import org.springframework.stereotype.Controller; 
import org.springframework.web.bind.annotation.RequestMapping; 
import org.springframework.web.bind.annotation.RequestMethod; 
import org.springframework.web.servlet.mvc.support.RedirectAttributes; 

import co.etech.osspage.domain.UserVO;

import co.etech.osspage.service.UserService;


@Controller 
@RequestMapping("/user") 
public class UserRegisterController { 
	private final UserService userService; 
	
	@Inject 
	public UserRegisterController(UserService userService) { 
		this.userService = userService; 
	} 
	
	// 회원가입 페이지 
	@RequestMapping(value = "/register", method = RequestMethod.GET) 
	public String registerGET() throws Exception { 
		return "/user/register"; 
	} 
	
	// 회원가입 처리 
	@RequestMapping(value = "/register", method = RequestMethod.POST) 
	public String registerPOST(UserVO userVO, RedirectAttributes redirectAttributes) throws Exception { 
	
		String hashedPw = BCrypt.hashpw(userVO.getUserPw(), BCrypt.gensalt()); 
		userVO.setUserPw(hashedPw); 
		userService.register(userVO); 
		redirectAttributes.addFlashAttribute("msg", "REGISTERED"); 
		
		return "redirect:/user/login"; 
		} 
	
	// 로그인 페이지 (임시로 여기에 작성하고 추후 UserLoginController에서 다시 작성) 
	@RequestMapping(value = "/login", method = RequestMethod.GET) 
	public String login() throws Exception { 
		return "/user/login"; 
		} 
}