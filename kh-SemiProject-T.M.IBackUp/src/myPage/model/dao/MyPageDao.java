package myPage.model.dao;

import java.io.*;
import java.sql.*;
import java.util.*;

import myPage.model.vo.MyPage;

import static common.JDBCTemplate.*;

public class MyPageDao {
	private Properties prop = new Properties();

	public MyPageDao() {
	}

	// 1. 예매확인용 dao
	public MyPage selledList() {
		return null;
	}

	// 2. 예매취소용 dao
	public MyPage dropTicket() {
		return null;
	}

	// 3. 장바구니 확인용 dao
	public MyPage BasketList() {
		return null;
	}

	// 4. 장바구니 취소용 dao
	public MyPage DropBasket() {
		return null;
	}

	// 5. 회원 정보 수정용 dao
	public MyPage updateMember() {
		return null;
	}

	// 6. 비밀번호 변경용 dao
	public MyPage updatePwd() {
		return null;
	}

	// 7. 회원 탈퇴용 dao
	public int deleteMember() {
		return 0;
	}

	// 8. 회원 등급확인용 dao
	public MyPage MemberGrade() {
		return null;
	}

}
