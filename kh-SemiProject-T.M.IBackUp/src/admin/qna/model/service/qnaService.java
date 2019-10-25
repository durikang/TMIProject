package admin.qna.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.getConnection;

import java.sql.Connection;

import admin.qna.model.Dao.qnaDao;


public class qnaService {

	public int deletelist(int i) {
		Connection conn = getConnection();

		int list = new qnaDao().qnadelete(conn, i);

		close(conn);
		return 0;
	}

	public int answerlist(String i) {
		Connection conn = getConnection();

		int list = new qnaDao().answerlist(conn, i);

		close(conn);
		return 0;
	}

}
