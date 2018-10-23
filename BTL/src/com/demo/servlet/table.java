package com.demo.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.Dao.tableDAO;

/**
 * Servlet implementation class table
 */
@WebServlet("/table")
public class table extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public table() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
			request.getRequestDispatcher("/WEB-INF/views/ThemBan.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String type_table = request.getParameter("type_table");
		String number_of_people = request.getParameter("number_of_people");
		String status_table = request.getParameter("status_table");
		
		if( tableDAO.addTable(new com.demo.Model.table(0, type_table, number_of_people, status_table))){
			
			 response.sendRedirect(request.getContextPath() + "/danhsachban");
			
		}else{
			
			request.setAttribute("error", "co loi gi do da xay ra");
			request.getRequestDispatcher("/WEB-INF/views/ThemBan.jsp").forward(request, response);
		}
		
		
	}

}
