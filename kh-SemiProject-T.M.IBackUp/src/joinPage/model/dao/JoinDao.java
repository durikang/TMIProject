package joinPage.model.dao;
import java.sql.Connection;
import java.util.Properties;



import joinPage.model.vo.Join;

public class JoinDao {
	private Properties prop = new Properties();
	
	public JoinDao() {
	}
	
	//1. 로그인용 dao
	public Join loginMember(Connection conn, String userId, String userPw) {
		return null;
	}
	// 2. 회원가입용 dao
	public int insertMember(Connection conn, Join j) {
		return 0;
	}
	
	// 3.아이디중복체크용 dao
	public int idCheck(Connection conn, String userId) {
		return 0;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
