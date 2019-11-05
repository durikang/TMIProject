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

import attachment.model.vo.Attachment;
import movie.model.vo.Movie;
import movie.model.vo.Preview;
import movie.model.vo.Reply;

public class MovieDao {
	private Properties prop = new Properties();

	public MovieDao() {
		
		String path=MovieDao.class.getResource("/sql/movie/movie-query.properties").getPath();
		
		try {
			prop.load(new FileReader(path));
			
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
				m.setMcode(rset.getString("MCODE"));
				m.setMtitle(rset.getString("MTITLE"));
				m.setPlot(rset.getString("PLOT"));
				m.setCategory(rset.getString("CATEGORY"));
				m.setmDirector(rset.getString("MDIRECTOR"));
				m.setmActor(rset.getString("MACTOR"));
				m.setKinds(rset.getString("KINDS"));
				m.setInfo(rset.getString("INFO"));
				m.setRelease(rset.getDate("RELEASE"));
				m.setAgeCut(rset.getString("AGECUT"));
				
				
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

	public Movie selectMovie(Connection con, String mcode) {
		PreparedStatement pstmt=null;
		ResultSet rset =null;
		String sql=prop.getProperty("selectMovie");
		Movie m = null;
		try {
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, mcode);
			rset=pstmt.executeQuery();
			if(rset.next()) {
				m=new Movie();
				m.setMcode(rset.getString("MCODE"));
				m.setMtitle(rset.getString("MTITLE"));
				m.setMtitleEng(rset.getString("MTITLEENG"));
				m.setMtitlePlot(rset.getString("MTITLEPLOT"));
				m.setPlot(rset.getString("PLOT"));
				m.setCategory(rset.getString("CATEGORY"));
				m.setmDirector(rset.getString("MDIRECTOR"));
				m.setmActor(rset.getString("MACTOR"));
				m.setKinds(rset.getString("KINDS"));
				m.setInfo(rset.getString("INFO"));
				m.setAgeCut(rset.getString("AGECUT"));
				m.setRelease(rset.getDate("RELEASE"));
				
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

	public int insertMovie(Connection con, Movie m) {
		PreparedStatement pstmt=null;
		Movie returnMovie=null;
		int res=0;
		int mCode=0;
		ResultSet rset=null;
		
		String sql=prop.getProperty("insertMovie");
		
		try {
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, m.getMtitle());
			pstmt.setString(2, m.getMtitleEng());
			pstmt.setString(3, m.getMtitlePlot());
			pstmt.setString(4, m.getPlot());
			pstmt.setString(5, m.getCategory());
			pstmt.setString(6, m.getmDirector());
			pstmt.setString(7, m.getmActor());
			pstmt.setString(8, m.getKinds());
			pstmt.setString(9, m.getInfo());
			pstmt.setDate(10,m.getRelease());
			pstmt.setString(11,m.getAgeCut());
			res=pstmt.executeUpdate();
			
			
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return res;
	}

	public int insertPreview(Connection con, ArrayList<Preview> plist) {
		PreparedStatement pstmt =null;
		int res=0;
		String sql=prop.getProperty("insertPreview");

		try {
			
			for(int i=0;i<plist.size();i++) {
				Preview p = plist.get(i);
				pstmt=con.prepareStatement(sql);
				
				pstmt.setString(1, p.getYurl());
				res=pstmt.executeUpdate();
			}
		
		} catch (SQLException e) {
			e.printStackTrace();
			
		}finally {
			close(pstmt);
		}
		
		
		return res;
	}

	public int insertImgAttachment(Connection con, ArrayList<Attachment> fileList) {
		PreparedStatement pstmt = null;

		int result = 0;

		String query = prop.getProperty("insertImgAttachment");

		try {
			System.out.println("fileList 사이즈 : "+fileList.size());
			for (int i = 0; i < fileList.size(); i++) {
				Attachment at = fileList.get(i);
				
				pstmt = con.prepareStatement(query);
				pstmt.setString(1, at.getOriginName());
				pstmt.setString(2, at.getChangeName());
				pstmt.setString(3, at.getFilePath());
				pstmt.setString(4, at.getFileLevel());

				result += pstmt.executeUpdate();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}

		return result;
	}

	public ArrayList selectFlist(Connection con) {
		ArrayList<Attachment> list = new ArrayList<Attachment>();

		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String query = prop.getProperty("selectFList");

		try {
			pstmt = con.prepareStatement(query);
			rset = pstmt.executeQuery();

			while (rset.next()) {
				Attachment at = new Attachment();
				at.setmCode(rset.getString("MCODE"));
				at.setChangeName(rset.getString("CHANGE_NAME"));

				list.add(at);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}

	public int increaseCount(Connection con, String mcode) {
		PreparedStatement pstmt = null;
		int res=0;
		
		String sql = prop.getProperty("increaseCount");
		
		try {
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, mcode);
			res=pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return res;
	}

	public ArrayList<Attachment> selectMovieThumbnail(Connection con, String mCode) {
		PreparedStatement pstmt=null;
		ResultSet rset= null;
		ArrayList<Attachment> list =new ArrayList<Attachment>();
		
		String sql= prop.getProperty("selectMovieThumbnail");
		
		try {
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, mCode);
			rset=pstmt.executeQuery();
			
			while(rset.next()) {
				Attachment at = new Attachment();
				at.setFid(rset.getString("FID"));
				at.setOriginName(rset.getString("ORIGIN_NAME"));
				at.setChangeName(rset.getString("CHANGE_NAME"));
				at.setFilePath(rset.getString("FILE_PATH"));
				at.setUploadDate(rset.getDate("UPLOAD_DATE"));
				
				list.add(at);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}

	public ArrayList<Preview> selectPreviewList(Connection con, String mCode) {
		PreparedStatement pstmt=null;
		ArrayList<Preview> list = new ArrayList<>();
		ResultSet rset=null;
		String sql = prop.getProperty("selectPreviewList");
		
		try {
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, mCode);
			rset=pstmt.executeQuery();
			while(rset.next()) {
				Preview p = new Preview();
				p.setYurl(rset.getString("YURL"));
				list.add(p);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}

	public int insertMovieReply(Connection con, Reply r) {
		
		PreparedStatement pstmt = null;
		int res=0;
		String sql = prop.getProperty("insertMovieReply");
		try {
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, r.getMcode());
			pstmt.setString(2, r.getRcontent());
			pstmt.setString(3, r.getRwriter());
			pstmt.setString(4, r.getReply_level());
			
			res=pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		System.out.println("insert 성공");
		return res;
	}

	public ArrayList<Reply> selectMovieReplyList(Connection con, String mcode) {
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		String sql= prop.getProperty("selectMovieReplyList");
		ArrayList<Reply> rlist=null;
		Reply r=null;
		try {
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, mcode);
			rset=pstmt.executeQuery();
			rlist=new ArrayList<>();
			
			while(rset.next()) {
				
				r =new Reply();
				r.setRid(rset.getString("RID"));
				r.setRcontent(rset.getString("RCONTENT"));
				r.setRwriter(rset.getString("RWRITER"));
				r.setCreate_date(rset.getDate("CREATE_DATE"));
				r.setModify_date(rset.getDate("MODIFY_DATE"));
				
				rlist.add(r);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		System.out.println("selectMovieReplyList : "+rlist);
		return rlist;
	}

}
