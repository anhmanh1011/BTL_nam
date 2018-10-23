package com.demo.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.Dao.foodtypeDAO;
import com.demo.Model.foodtype;

/**
 * Servlet implementation class themloaimonan
 */
@WebServlet("/themloaimonan")
public class themloaimonan extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public themloaimonan() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		request.getRequestDispatcher("/WEB-INF/views/ThemLoaiMonAn.jsp").forward(request, response);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String tenLoai = request.getParameter("tenLoai");
		System.out.println(tenLoai);
		
		if(tenLoai == ""){
			request.setAttribute("mes", "không hợp lệ");
		}
		
		else if(foodtypeDAO.addFoodType(new foodtype(0, tenLoai, ""))){
			
			request.setAttribute("mes", "Đã thêm loại món ăn thành công");
			
		}else {
			
			request.setAttribute("mes", "Loại món ăn đã tồn tại");
		}
		request.getRequestDispatcher("/WEB-INF/views/ThemLoaiMonAn.jsp").forward(request, response);

		
	}

}
