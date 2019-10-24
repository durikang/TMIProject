package movie.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import movie.model.service.MovieService;
import movie.model.vo.Movie;


@WebServlet("/detail.mo")
public class MovieDetailViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public MovieDetailViewServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int mCode=Integer.parseInt(request.getParameter("mCode"));
		
		Movie m = new MovieService().selectMovie(mCode);
		/*
			detail
		*/

		if(m !=null) {
			request.setAttribute("movie", m);
			request.getRequestDispatcher("views/movie/MovieDetailViewServlet.jsp").forward(request, response);
			
		}else {
			request.setAttribute("msg", "무비게시판 상세 보기 실패!");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);	
		}
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
