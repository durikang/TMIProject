package joinPage.model.service;

import static common.JDBCTemplate.*;

import java.sql.Connection;

import joinPage.model.dao.JoinDao;
import joinPage.model.vo.Join;

public class JoinService {
	
	// 1. 로그인용 서비스
	public Join loginMember(String userId, String userPw) {
		Connection conn = getConnection();
		
		Join loginUser = new JoinDao().loginMember(conn, userId, userPw);
		
		close(conn);
				
		return loginUser;
	}
	
	// 2. 회원가입용 서비스
	public int insertMember(Join j) {
		Connection conn = getConnection();
		
		int result = new JoinDao().insertMember(conn, j);
		
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}
	// 3. 회원찾기용 서비스
	public Join searchMember() {
		return null;
	}
	// 4. 아이디중복체크용 서비스
	public int idCheck() {
		return 0;	
	}
	
}
