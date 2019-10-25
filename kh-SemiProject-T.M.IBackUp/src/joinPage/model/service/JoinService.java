package joinPage.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import joinPage.model.dao.JoinDao;
import joinPage.model.vo.Join;



public class JoinService {
	
	// 1. 로그인용 서비스
	public int loginMember(String userId, String userPw) {
		Connection conn = getConnection();
		
		Join loginUser = new JoinDao().loginMember(conn, userId, userPw);
		return 0;
	}
	// 2. 회원가입용 서비스
	public int insertMember(Join j) {
		return 0;
	}
	
	// 3. 아이디중복체크용 서비스
	public int idCheck(String userId) {
		Connection conn = getConnection();
		int result = new JoinDao().idCheck(conn, userId);
		
		return 0;	
	}
	
}
