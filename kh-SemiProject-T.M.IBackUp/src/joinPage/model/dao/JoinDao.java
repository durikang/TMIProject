package joinPage.model.dao;
import java.io.*;
import java.sql.*;
import java.util.*;

import joinPage.model.vo.Join;
import static common.JDBCTemplate.*;

public class JoinDao {
	private Properties prop = new Properties();
	
	public JoinDao() {
		String fileName = JoinDao.class.getResource("/sql/member/member-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//1. 로그인용 dao
	public Join loginMember(Connection conn, String id, String pw) {
		Join loginUser = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("loginMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			
			rset = pstmt.executeQuery();
					
			if(rset.next()) {
				loginUser = new Join(rset.getString("USERID"),
									 rset.getString("USERPW"),
									 rset.getString("PWHINT"),
									 rset.getString("HINT"),
									 rset.getString("USERNAME"),
									 rset.getString("BIRTH"),
									 rset.getString("PHONE"),
									 rset.getString("EMAIL"),
									 rset.getString("ADDRESS"),
									 rset.getString("FAVORITE"),
									 rset.getString("MVP"),
									 rset.getString("BREAKDOWN"),
									 rset.getString("STATUS"));
									 
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return loginUser;
	}
	// 2. 회원가입용 dao
	public int insertMember(Connection conn, Join j) {
		int result = 0;
		PreparedStatement pstmt = null;
		String query = prop.getProperty("insertMember");
		
		try {
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, j.getUserId());
			pstmt.setString(2, j.getUserpw());
			pstmt.setString(3, j.getPWHINT());
			pstmt.setString(4, j.getHINT());
			pstmt.setString(5, j.getUsername());
			pstmt.setString(6, j.getBirth());
			pstmt.setString(7, j.getPhone());
			pstmt.setString(8, j.getEmail());
			pstmt.setString(9, j.getAddress());
			pstmt.setString(10, j.getFavorite());
			
			result = pstmt.executeUpdate();
					
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
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
