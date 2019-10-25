package snack.model.service;

import static common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import review.model.vo.Review;
import snack.model.vo.Snack;

public class SnackService {
	
	// 1. 스낵스토어 조회용 서비스
	public ArrayList<Snack> selectList() {
		return null;
	}

	// 2. 스낵스토어 상세보기 서비스
	public Review selectNotice() {
		return null;
	}

	// 3. 장바구니 담기 서비스
	public int updateNotice() {
		return 0;
	}

}
