package joinPage.model.service;

import static common.JDBCTemplate.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import joinPage.model.vo.Join;

public class JoinService {
	
	// 1. 로그인용 서비스
	public Join loginMember() {
		return null;
	}
	// 2. 회원가입용 서비스
	public int insertMember() {
		return 0;
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
