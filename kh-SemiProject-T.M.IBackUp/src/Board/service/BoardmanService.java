package Board.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import Board.Dao.boardmanDao;
import Board.model.Boardman;
import Board.model.Reply;

public class BoardmanService {

	public int getListCount() {
		Connection conn = getConnection();
		int listCount = new boardmanDao().getListCount(conn);
		close(conn);
		return listCount;
	}

	public ArrayList<Boardman> selectList(int currentPage, int boardLimit) {
		Connection conn = getConnection();
		ArrayList<Boardman> list = new boardmanDao().selectList(conn, currentPage, boardLimit);
		close(conn);
		return list;
	}

	public Boardman selectBoard(String bnum) {
		Connection conn = getConnection();
		boardmanDao bdo = new boardmanDao();
		Boardman b = bdo.selectBoard(conn,bnum);
		close(conn);
		return b;
	}

	public int deleteb(String bid) {
		Connection conn = getConnection();
		boardmanDao bdo = new boardmanDao();
		int result = bdo.deleteb(conn,bid);
		close(conn);
		return result;
	}

	public ArrayList<Reply> selectReplyList(String bnum) {
		Connection conn = getConnection();
		ArrayList<Reply> rlist = new boardmanDao().selectReplyList(conn, bnum);
		close(conn);
		return rlist;
	}

	public int deleter(String rid) {
		Connection conn = getConnection();
		boardmanDao bdo = new boardmanDao();
		int result = bdo.deleter(conn,rid);
		close(conn);
		return result;
	}





}
