package movie.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import attachment.model.vo.Attachment;
import movie.model.service.MovieService;
import movie.model.vo.Movie;


@WebServlet("/list.mo")
public class MovieListViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public MovieListViewServlet() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		MovieService bService = new MovieService();
		
		ArrayList<Movie> mlist = bService.selectList(1);
		
		ArrayList<Attachment> mplist= bService.selectList(2);
		
		if(mlist !=null && mplist !=null) {
			request.setAttribute("movieList", mlist);
			request.setAttribute("imgFileList", mplist);
			request.getRequestDispatcher("views/movie/MovieListViewForm.jsp").forward(request, response);
					
		}else {
			request.setAttribute("msg", "사진 게시판 조회 실패!!");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
