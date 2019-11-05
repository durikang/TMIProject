package review.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myPage.model.vo.MyPage;
import review.model.service.ReviewService;
import review.model.vo.Review;


/**
 * Servlet implementation class NoticeInsertServlet
 */
@WebServlet("/insert.re")
public class ReviewInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReviewInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String mcode = request.getParameter("mcode");
		String rtitle = request.getParameter("rtitle");
		String rcontent = request.getParameter("rcontent");
		
		MyPage loginUser = (MyPage)request.getSession().getAttribute("loginUser");
		String rWriter = String.valueOf(loginUser.getUserNum());
		
		Review r = new Review();
		r.setMcode(mcode);
		r.setRtitle(rtitle);
		r.setRcontent(rcontent);
		r.setrWriter(rWriter);
		
		int result = new ReviewService().insertReview(r);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
