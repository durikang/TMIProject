package question.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import myPage.model.vo.MyPage;
import question.model.vo.Question;
import review.model.vo.Review;


public class QuestionService {
	
			// 1. 문의 리스트 조회용 dao
			public ArrayList<Question> selectList(){
				return null;
			}

			// 2. 문의 작성용 dao
			public int insertQuestion() {
				return 0;
			}
			

			// 3. 문의 상세보기 dao
			public Review selectQuestion() {
				return null;
			}

			// 4. 문의 수정 dao
			public int updateQuestion() {
				return 0;
			}

			// 5. 문의 삭제용 dao
			public int deleteQuestion() {
				return 0;	
			}

		
	
}
