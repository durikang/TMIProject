package movie.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import movie.model.dao.MovieDao;
import movie.model.vo.Movie;
import snack.model.vo.Snack;

public class MovieService {

	public ArrayList<Movie> selectList(int n) {
		Connection con = getConnection();
		ArrayList<Movie> list=null;
		if(n==0) {
			list = new MovieDao().selectList(con);
		}else {
			list = new MovieDao().selectListChart(con);
		}
		close(con);
		return list;
	}

	public Movie selectMovie(int mCode) {
		Connection con = getConnection();
		Movie b = new MovieDao().selectMovie(con,mCode);
		
		close(con);
		
		
		return b;
	}

	
}
