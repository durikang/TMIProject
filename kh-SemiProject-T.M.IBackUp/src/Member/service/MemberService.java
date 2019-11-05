package Member.service;

import static common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import Member.Dao.MemberManDao;
import Member.model.vo.Member;

public class MemberService {

	public int getListCount() {
		Connection conn = getConnection();
		int listCount = new MemberManDao().getListCount(conn);
		close(conn);
		return listCount;
	}

	public static ArrayList<Member> selectList(int currentPage, int boardLimit) {
		Connection conn = getConnection();

		ArrayList<Member> list = new MemberManDao().selectList(conn, currentPage, boardLimit);

		close(conn);

		return list;
	}

	public int fdayMem(String mid) {
		Connection conn = getConnection();
		int result = new MemberManDao().fdayMem(conn,mid);
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}

	public int cpunish(String mid) {
		Connection conn = getConnection();
		int result = new MemberManDao().cpunish(conn,mid);
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}

	public int adayMem(String mid) {
		Connection conn = getConnection();
		int result = new MemberManDao().adayMem(conn,mid);
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}

}
