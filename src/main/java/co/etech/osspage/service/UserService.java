package co.etech.osspage.service;

import co.etech.osspage.domain.UserVO;

public interface UserService { 
	// 회원 가입 처리 
	void register(UserVO userVO) throws Exception; 
	}