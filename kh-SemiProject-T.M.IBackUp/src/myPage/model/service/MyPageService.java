package myPage.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.rollback;

import java.sql.Connection;


import myPage.model.vo.MyPage;


public class MyPageService {
	
		//1. 예매확인용 서비스
		public  MyPage selledList() {
			return null;
		}
		//2. 예매취소용 서비스
		public MyPage dropTicket() {
			return null;
		}	
		//3. 장바구니 확인용 서비스
		public MyPage BasketList() {
			return null;	
		}
		// 4. 장바구니 취소용 서비스
		public MyPage DropBasket() {
			return null;	
		}	
		// 5. 회원 정보 수정용 서비스
		public MyPage updateMember() {
			return null;
		}
		// 6. 비밀번호 변경용 서비스
		public MyPage updatePwd() {
			return null;
		}
		// 7. 회원 탈퇴용 서비스
		public int deleteMember() {
			return 0;
		}
		// 8. 회원 등급확인용 서비스
		public MyPage MemberGrade() {
			return null;
			
		}
		
	
}
