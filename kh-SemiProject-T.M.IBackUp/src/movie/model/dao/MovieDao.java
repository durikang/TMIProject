package movie.model.dao;

import static common.JDBCTemplate.close;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import movie.model.vo.Movie;

public class MovieDao {
	private Properties prop = new Properties();

	public MovieDao() {
		
		String path=MovieDao.class.getResource("/sql/movie/movie-query.properties").getPath();
		
		try {
			prop.load(new FileReader(prop.getProperty(path)));
			
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
	}

	public ArrayList<Movie> selectList(Connection con) {
		PreparedStatement pstmt=null;
		ResultSet rset = null;
		ArrayList<Movie> list = new ArrayList<>();
		Movie m=null;
		String sql = prop.getProperty("selectList");
		try {
			pstmt=con.prepareStatement(sql);
			rset=pstmt.executeQuery();
			
			while(rset.next()) {
				m = new Movie();
				/*내용 작성*/
				
				
				list.add(m);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}

	public Movie selectMovie(Connection con, int mCode) {
		PreparedStatement pstmt=null;
		ResultSet rset =null;
		String sql=prop.getProperty("selectMovie");
		Movie m = null;
		try {
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, mCode);
			rset=pstmt.executeQuery();
			if(rset.next()) {
				m=new Movie();
				/*
				 * select 내용들
				 * */
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return m;
	}

	public ArrayList<Movie> selectListChart(Connection con) {
		
		PreparedStatement pstmt=null;
		ResultSet rset = null;
		ArrayList<Movie> list = new ArrayList<>();
		Movie m=null;
		String sql = prop.getProperty("selectList");
		try {
			pstmt=con.prepareStatement(sql);
			rset=pstmt.executeQuery();
			
			while(rset.next()) {
				m = new Movie();
				/*내용 작성*/
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}

}
