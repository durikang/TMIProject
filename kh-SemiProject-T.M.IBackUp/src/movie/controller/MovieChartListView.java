package movie.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import movie.model.service.MovieService;
import movie.model.vo.Movie;

@WebServlet("/clist.mo")
public class MovieChartListView extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public MovieChartListView() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ArrayList<Movie> clist=new MovieService().selectList(1);
		
		request.setAttribute("clist", clist);
		request.getRequestDispatcher("views/movie/MovieChartList.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
