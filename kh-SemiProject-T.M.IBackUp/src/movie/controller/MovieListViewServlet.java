package movie.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import movie.model.vo.Movie;


@WebServlet("/list.mo")
public class MovieListViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public MovieListViewServlet() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/*ArrayList<Movie> mlist = new MovieService().selectList(0);*/
		//기능 구현 이후 주석 품
		
		ArrayList<Movie> mlist = new ArrayList<Movie>();
		
//		mlist.add(new Movie(1,"조커","c://","c://","줄거리",1));
		
		
//		request.setAttribute("mlist", mlist);
		request.getRequestDispatcher("views/movie/MovieListViewForm.jsp").forward(request, response);
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
