package co.etech.osspage.service;

import javax.inject.Inject; 

import org.springframework.stereotype.Service; 

import co.etech.osspage.domain.UserVO;
import co.etech.osspage.persistence.UserDAO;


@Service 
public class UserServiceImpl implements UserService { 

	private final UserDAO userDAO; 
	
	@Inject 
	public UserServiceImpl(UserDAO userDAO) { 
		this.userDAO = userDAO; 
	} 
	
	// 회원 가입 처리 
	@Override 
	public void register(UserVO userVO) throws Exception { 
		userDAO.register(userVO); 
	} 
	
}
