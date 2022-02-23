package co.etech.osspage.persistence;

import co.etech.osspage.domain.UserVO;

public interface UserDAO {
	
	// 회원가입 처리 
	 void register(UserVO userVO) throws Exception; 

}
