package com.demo.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.Dao.tableorderDAO;
import com.demo.Model.tableorder;

/**
 * Servlet implementation class datban
 */
@WebServlet("/datban")
public class datban extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public datban() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String name_cus = request.getParameter("tenngdung");
		tableorderDAO.addTableorder(new tableorder(0, "manh","12", 5, "6 p.m", "anbc", 1));

		request.setCharacterEncoding("UTF-8");
		 response.sendRedirect(request.getContextPath() + "/danhsachbandat");
	}

}
