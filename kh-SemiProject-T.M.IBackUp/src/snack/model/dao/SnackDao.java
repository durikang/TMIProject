package snack.model.dao;

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
import snack.model.vo.Snack;

public class SnackDao {

	
		// 1. 스낵스토어 조회용 dao
		public ArrayList<Snack> selectList() {
			return null;
		}

		// 2. 스낵스토어 상세보기 dao
		public Review selectNotice() {
			return null;
		}

		// 3. 장바구니 담기 dao
		public int updateNotice() {
			return 0;
		}
	
	
	
	
	
	
	
	
	

	
	
	
	
	
	
	
	
	
}
