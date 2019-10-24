package joinPage.model.dao;
import java.io.*;
import java.sql.*;
import java.util.*;

import joinPage.model.vo.Join;
import static common.JDBCTemplate.*;

public class JoinDao {
	private Properties prop = new Properties();
	
	public JoinDao() {
	}
	
	//1. 로그인용 dao
	public Join loginMember() {
		return loginMember();
	}
	// 2. 회원가입용 dao
	public int insertMember() {
		return 0;
	}
	// 3. 회원 찾기용 dao
	public Join searchMember() {
		return null;
	}
	// 4.아이디중복체크용 dao
	public int idCheck() {
		return 0;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
