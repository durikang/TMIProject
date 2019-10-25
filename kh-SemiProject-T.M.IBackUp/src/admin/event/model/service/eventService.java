package admin.event.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.getConnection;

import java.sql.Connection;

import admin.event.model.Dao.eventDao;
import admin.event.model.vo.movRate;
import admin.event.model.vo.quarterRate;
import admin.event.model.vo.termRate;


public class eventService {

	public int eventControl(int i) {
		Connection conn = getConnection();

		int list = new eventDao().eventcontrol(conn, i);

		close(conn);
		return 0;
	}

	public int movview(int i) {
		Connection conn = getConnection();
		movRate a = new movRate();
		int list = new eventDao().monthView(conn, i);

		close(conn);
		return 0;
	}

	public int yearview(int i) {
		Connection conn = getConnection();
		quarterRate a = new quarterRate();
		int list = new eventDao().yearView(conn, i);

		close(conn);
		return 0;
	}

	public int dayview(int i) {
		Connection conn = getConnection();
		termRate a = new termRate();
		int list = new eventDao().dayView(conn, i);

		close(conn);
		return 0;
	}

}
