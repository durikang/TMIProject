package review.model.dao;

import static common.JDBCTemplate.*;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import review.model.vo.Review;

public class ReviewDao {

		
	
	// 1. 리뷰 리스트 조회용 dao
	public ArrayList<Review> selectList(){
		return null;
	}

	// 2. 리뷰글 작성용 dao
	public int insertReview() {
		return 0;
	}
	
	// 3. 리뷰 조회수 증가용 dao
	public int increaseCount() {
		return 0;
	}

	// 4. 리뷰 상세보기 dao
	public Review selectReview() {
		return null;
	}

	// 5. 리뷰 수정 dao
	public int updateReview() {
		return 0;
	}

	// 6. 공지사항 삭제용 dao
	public int deleteReview() {
		return 0;	
	}
	
	
	
	
	
	
	
	
	

	
	
	
	
	
	
	
	
	
}
