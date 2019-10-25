package admin.service.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.getConnection;

import java.sql.Connection;

import admin.service.model.dao.serviceDao;


public class serviceService {

	public int deleteService(int i) {
		Connection conn = getConnection();

		int list = new serviceDao().servicedelete(conn, i);

		close(conn);
		return 0;
	}

	public int answerService(int i, String j) {
		Connection conn = getConnection();

		int list = new serviceDao().answerService(conn, i,j);

		close(conn);
		return 0;
	}

}
