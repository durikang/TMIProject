package movie.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import attachment.model.vo.Attachment;
import movie.model.dao.MovieDao;
import movie.model.vo.Movie;
import movie.model.vo.Preview;
import movie.model.vo.Reply;

public class MovieService {

	public ArrayList selectList(int flag) {
		Connection con = getConnection();
		ArrayList list=null;
		MovieDao mDao= new MovieDao();
		if(flag==1) {
			list = mDao.selectList(con);
		}else {
			list= mDao.selectFlist(con);
		}
		close(con);
		return list;
	}

	public Movie selectMovie(String mcode) {
		Connection con = getConnection();
		
		MovieDao mDao= new MovieDao();
		int res= mDao.increaseCount(con,mcode);
		Movie m = null;
		
		if(res>0) {
			m=mDao.selectMovie(con,mcode);
			commit(con);
		}else {
			rollback(con);
		}
		
		close(con);
		
		
		return m;
	}

	public int insertMovie(Movie m, ArrayList<Attachment> fileList) {
		Connection con= getConnection();
		ArrayList<Preview> plist = new ArrayList<>();
		MovieDao mDao= new MovieDao();
		
		
		int res1=mDao.insertMovie(con,m);
		plist=m.getPlist();
		int res2=mDao.insertPreview(con,plist);
		int res3=mDao.insertImgAttachment(con,fileList);
		
		if(res1 > 0 && res2> 0 && res3>0) {
			commit(con);
		}else {
			rollback(con);
		}
		
		close(con);
		return res1;
	}

	public Movie selectMovieNoCnt(String mCode) {
		Connection con =getConnection();
		
		Movie m = new MovieDao().selectMovie(con, mCode);
		
		close(con);
		
		return m;
	}

	public ArrayList<Attachment> selectMovieThumbnail(String mCode) {
		Connection con = getConnection();
		ArrayList<Attachment> list = new MovieDao().selectMovieThumbnail(con,mCode);
		
		close(con);
		
		return list;
	}

	public ArrayList<Preview> selectPrevieList(String mCode) {
		Connection con = getConnection();
		ArrayList<Preview> list = new MovieDao().selectPreviewList(con,mCode);
		
		close(con);
		
		
		return list;
	}

	public ArrayList<Reply> insertMovieReply(Reply r) {
		Connection con = getConnection();
		MovieDao mDao = new MovieDao();
		
		int res=mDao.insertMovieReply(con,r);
		ArrayList<Reply> rlist=null;
		
		if(res>0) {
			System.out.println("res>0이다.");
			commit(con);
			rlist=mDao.selectMovieReplyList(con,r.getMcode());
		}else {
			rollback(con);
		}
		close(con);
		
		return rlist;
	}

	public ArrayList<Reply> selectMovieReplyList(String mCode) {

			//여기까지 작업
		
		return null;
	}

}
