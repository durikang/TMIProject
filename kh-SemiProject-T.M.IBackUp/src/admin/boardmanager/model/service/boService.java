package admin.boardmanager.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.getConnection;

import java.sql.Connection;

import admin.boardmanager.model.Dao.boDao;


public class boService {

	public int deletelist(int i) {
		Connection conn = getConnection();

		int list = new boDao().bodelete(conn, i);

		close(conn);
		return 0;
	}

}
