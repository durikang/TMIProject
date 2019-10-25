package myPage.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.rollback;

import java.sql.Connection;

import joinPage.model.vo.Join;
import myPage.model.dao.MyPageDao;
import myPage.model.vo.MyPage;

public class MyPageService {

	// 1. 예매확인용 서비스
	public MyPage selledList(MyPage m) {
		Connection conn = getConnection();

		MyPage selledList = null;
		
		int result = new MyPageDao().selledList(conn, m);
		
		return null;
	}

	// 2. 예매취소용 서비스
	public MyPage dropTicket(MyPage m) {
		Connection conn = getConnection();

		MyPage dropTicket = null;
		
		int result = new MyPageDao().dropTicket(conn, m);
		
		return null;
	}

	// 3. 장바구니 확인용 서비스
	public MyPage BasketList(MyPage m) {
		Connection conn = getConnection();

		MyPage BasketList = null;
		
		int result = new MyPageDao().BasketList(conn, m);
		
		return null;
	}

	// 4. 장바구니 취소용 서비스
	public MyPage DropBasket(MyPage m) {
		Connection conn = getConnection();

		MyPage DropBasket = null;
		
		int result = new MyPageDao().DropBasket(conn, m);
		
		return null;
	}

	// 5. 회원 정보 수정용 서비스
	public MyPage updateMember(MyPage m) {
		Connection conn = getConnection();

		MyPage updateMember = null;

		int result = new MyPageDao().updateMember(conn, m);

		return null;
	}

	// 6. 비밀번호 변경용 서비스
	public MyPage updatePwd() {
		Connection conn = getConnection();

		int result = new MyPageDao().updatePwd();

		return null;
	}

	// 7. 회원 탈퇴용 서비스
	public int deleteMember() {

		Connection conn = getConnection();
		
		int result = new MyPageDao().deleteMember();
		return 0;
	}

	// 8. 회원 등급확인용 서비스
	public MyPage MemberGrade(MyPage m) {
		Connection conn = getConnection();
		
		int result = new MyPageDao().MemberGrade();
		return null;

	}

}
