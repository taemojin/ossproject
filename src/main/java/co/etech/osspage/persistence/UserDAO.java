package co.etech.osspage.persistence;

import co.etech.osspage.domain.UserVO;

public interface UserDAO {
	
	// ȸ������ ó�� 
	 void register(UserVO userVO) throws Exception; 

}
