package snack.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import basket.model.service.BasketService;
import basket.model.vo.Basket;
import snack.model.service.SnackService;
import snack.model.vo.Snack;

/**
 * Servlet implementation class InsertBasketServlet
 */
@WebServlet("/InsertBasket.sn")
public class InsertBasketServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertBasketServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int skCode = Integer.parseInt(request.getParameter("skCode"));
		int bCode =  Integer.parseInt(request.getParameter("bCode"));
		
		Basket b = new Basket();
		
		int result = new BasketService().InsertBasket(bCode,skCode);
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}