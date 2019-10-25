package admin.usercontrol.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import admin.usercontrol.model.dao.userDao;



public class usercontrolService {



	public int mvpcontrol(String bId, int i) {
		Connection conn = getConnection();
		if(i>0) {
			int list = new userDao().mvpup(conn,bId);
		}else {
			int list = new userDao().mvpdown(conn,bId);
		}
		close(conn);
		return 0;
	}

	public int punishment(String bId, int i) {
		Connection conn = getConnection();
		if(i>1) {
			int list = new userDao().fivday(conn,bId);
		}else {
			int list = new userDao().allday(conn,bId);
		}
		close(conn);
		return 0;
	}

}
