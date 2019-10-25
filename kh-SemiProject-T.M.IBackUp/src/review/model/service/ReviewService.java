package review.model.service;

import static common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import review.model.vo.Review;

public class ReviewService {
	// 1. 리뷰게시판 조회용 서비스
	public ArrayList<Review> selectList() {
		return null;
	}
	// 2. 리뷰 글 작성용 서비스
	public int insertReview() {
		return 0;
	}

	// 3. 리뷰 상세보기 서비스
	public Review selectReview() {
		return null;
	}

	// 4. 리뷰 수정용 서비스
	public int updateReview() {
		return 0;
	}

	
	// 5. 공지사항 삭제용 서비스
	public int deleteReview() {
		return 0;
	}


}
