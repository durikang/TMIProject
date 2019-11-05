package Board.Dao;

import static common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import Board.model.Boardman;
import Board.model.Reply;

public class boardmanDao {
	private Properties prop = new Properties();

	public boardmanDao() {
		String fileName = boardmanDao.class.getResource("/sql/board/boardman-query.properties").getPath();
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public int getListCount(Connection conn) {
		int listCount = 0;

		Statement stmt = null;
		ResultSet rset = null;

		String sql = prop.getProperty("getListCount");
		try {
			stmt = conn.createStatement();
			rset = stmt.executeQuery(sql);
			if (rset.next()) {
				listCount = rset.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		return listCount;
	}

	public ArrayList<Boardman> selectList(Connection conn, int currentPage, int boardLimit) {
		ArrayList<Boardman> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectList");
		try {
			pstmt = conn.prepareStatement(sql);
			int startRow = (currentPage - 1) * boardLimit + 1;
			int endRow = startRow + boardLimit - 1;

			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);

			rset = pstmt.executeQuery();

			while (rset.next()) {
				list.add(new Boardman(rset.getString(2), rset.getString(3), rset.getString(4), rset.getDate(5)));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}

	public Boardman selectBoard(Connection conn, String bnum) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Boardman bo = null;
		String query = prop.getProperty("selectBo");
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, bnum);
			rset = pstmt.executeQuery();
			if (rset.next()) {
				bo = new Boardman(rset.getString(1), rset.getString(2), rset.getString(3), rset.getString(4),
						rset.getString(5), rset.getString(6), rset.getString(7), rset.getString(8), rset.getString(9),
						rset.getString(10), rset.getString(11), rset.getString(12), rset.getDate(13));
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return bo;

	}

	public int deleteb(Connection conn, String bid) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = prop.getProperty("deleteBo");
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, bid);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
	}

	public ArrayList<Reply> selectReplyList(Connection conn, String bnum) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Reply> rlist = null;
		String sql = prop.getProperty("selectReply");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bnum);
			rs = pstmt.executeQuery();
			rlist = new ArrayList<Reply>();
			while(rs.next()) {
				rlist.add(new Reply(rs.getString(1),
									rs.getString(2),
									rs.getString(3),
									rs.getString(4),
									rs.getDate(5),
									rs.getDate(6),
									rs.getString(7)
						));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}

		return rlist;
	}

	public int deleter(Connection conn, String rid) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = prop.getProperty("deleteRep");
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, rid);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
	}

}