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
	
	// ȸ������ ������ 
	@RequestMapping(value = "/register", method = RequestMethod.GET) 
	public String registerGET() throws Exception { 
		return "/user/register"; 
	} 
	
	// ȸ������ ó�� 
	@RequestMapping(value = "/register", method = RequestMethod.POST) 
	public String registerPOST(UserVO userVO, RedirectAttributes redirectAttributes) throws Exception { 
	
		String hashedPw = BCrypt.hashpw(userVO.getUserPw(), BCrypt.gensalt()); 
		userVO.setUserPw(hashedPw); 
		userService.register(userVO); 
		redirectAttributes.addFlashAttribute("msg", "REGISTERED"); 
		
		return "redirect:/user/login"; 
		} 
	
	// �α��� ������ (�ӽ÷� ���⿡ �ۼ��ϰ� ���� UserLoginController���� �ٽ� �ۼ�) 
	@RequestMapping(value = "/login", method = RequestMethod.GET) 
	public String login() throws Exception { 
		return "/user/login"; 
		} 
}