package myPage.model.dao;
import java.io.*;
import java.sql.*;
import java.util.*;

import joinPage.model.vo.Join;
import myPage.model.vo.MyPage;

import static common.JDBCTemplate.*;

public class MyPageDao {
	private Properties prop = new Properties();
	
	public MyPageDao() {
	}
	
	/*//1. 예매확인용 dao
	public MyPage selledList() {
		return null;
	}

	// 2. 회원 찾기용 dao
	public Login searchMember() {
		return null;
	}*/
	
	// 1. 예매 확인용 서비스
	public int selledList(Connection conn, MyPage m) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	// 2. 예매 취소용 서비스
	public int dropTicket(Connection conn, MyPage m) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	// 3. 장바구니 확인용 서비스
	public int BasketList(Connection conn, MyPage m) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	// 4. 장바구니 취소용 서비스
	public int DropBasket(Connection conn, MyPage m) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	// 5. 회원 등급 확인용 서비스
	public int MemberGrade() {
		// TODO Auto-generated method stub
		return 0;
	}
	
	// 6. 회원 정보 수정 서비스
	public int updateMember(Connection conn, MyPage m) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	// 7. 비밀번호 수정 서비스
	public int updatePwd() {
		// TODO Auto-generated method stub
		return 0;
	}
	
	// 8. 회원 탈퇴 서비스
	public int deleteMember() {
		// TODO Auto-generated method stub
		return 0;
	}





	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
