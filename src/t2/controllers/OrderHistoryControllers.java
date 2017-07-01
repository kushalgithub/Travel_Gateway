package t2.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import t2.dao.ManageCustomerProfileDao;
import t2.dao.RegisterDao;

@WebServlet("/OrderHistoryControllers")
public class OrderHistoryControllers extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public OrderHistoryControllers() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("email");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		//String email = request.getParameter("myemail");
		//String email = "harsh.shah@gmail.com";
		ManageCustomerProfileDao manageprofiledao= new ManageCustomerProfileDao();
	  ArrayList model=manageprofiledao.viewCarBook(email);
	  ArrayList location=manageprofiledao.viewCarBook1(email);
		ArrayList price=manageprofiledao.viewCarBook2(email);
		ArrayList hotel=manageprofiledao.viewHotelBook(email);
		  ArrayList hlocation=manageprofiledao.viewHotelBook1(email);
			ArrayList hprice=manageprofiledao.viewHotelBook2(email);
			ArrayList restaurant=manageprofiledao.viewRestaurantBook(email);
			  ArrayList rlocation=manageprofiledao.viewRestaurantBook1(email);
				ArrayList rprice=manageprofiledao.viewRestaurantBook2(email);
		request.setAttribute("c1", model);
	    request.setAttribute("c2", location);
	    request.setAttribute("c3", price);
	    request.setAttribute("c4", hotel);
	    request.setAttribute("c5", hlocation);
	    request.setAttribute("c6", hprice);
	    request.setAttribute("c7", restaurant);
	    request.setAttribute("c8", rlocation);
	    request.setAttribute("c9", rprice);
	    RequestDispatcher rd = request.getRequestDispatcher("OrderAcess.jsp");
		rd.include(request, response);
		
		
		
		
		
	}

}
