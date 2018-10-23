package com.demo.servlet;

import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.demo.Dao.foodDAO;
import com.demo.Dao.userDAO;
import com.demo.Model.food;
import com.demo.Model.user;

/**
 * Servlet implementation class themnguoiquantri
 */
@WebServlet("/themnguoiquantri")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 1, 
maxFileSize = 1024 * 1024 , 
maxRequestSize = 1024 * 1024 * 2) 
public class themnguoiquantri extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public themnguoiquantri() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		request.getRequestDispatcher("/WEB-INF/views/Themnguoiquantri.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Đường dẫn tuyệt đối tới thư mục gốc của web app.

		String user_name = request.getParameter("user_name");
		String user_account = request.getParameter("user_account");
		String user_email = request.getParameter("user_email");
		String user_password = request.getParameter("user_password");
		String re_user_password = request.getParameter("re_user_password");
		System.out.println(user_account + user_name + user_password + user_password);
		if (user_password.toLowerCase().equals(re_user_password)) {

			request.setCharacterEncoding("UTF-8");

			String fullSavePath = "C:\\Users\\daodu\\workspace\\BTL\\WebContent\\resource\\img\\avatars";
			System.out.println(fullSavePath);
			fullSavePath = fullSavePath.replace('\\', '/');

			// Thư mục để save file tải lên.

			try {
				
				String fileName = "";
				File fileSaveDir = new File(fullSavePath);
				// Danh mục các phần đã upload lên (Có thể là nhiều file).
				for (Part part : request.getParts()) {
					fileName = extractFileName(part);
					if (fileName != null && fileName.length() > 0) {
						String filePath = fullSavePath + File.separator + fileName;
						filePath = filePath.replace('\\', '/');

						System.out.println("Write attachment to file: " + fileName);

						// Ghi vào file.
						java.util.Date dt = new java.util.Date();

						java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd");

						String currentTime = sdf.format(dt);
						
						user u = new user(user_name, user_account, re_user_password,currentTime, fileName,user_email);

				

						System.out.println(u);
						userDAO.addUser(u);
						
						part.write(filePath);
						
					}

				}
				response.sendRedirect(request.getContextPath() + "/home");

			
			} catch (Exception e) {
				response.getWriter().println(e);
			}
		}
		
	}

	private String extractFileName(Part part) {
		// form-data; name="file"; filename="C:\file1.zip"
		// form-data; name="file"; filename="C:\Note\file2.zip"
		String contentDisp = part.getHeader("content-disposition");
		String[] items = contentDisp.split(";");
		for (String s : items) {
			if (s.trim().startsWith("filename")) {
				// C:\file1.zip
				// C:\Note\file2.zip
				String clientFileName = s.substring(s.indexOf("=") + 2, s.length() - 1);
				clientFileName = clientFileName.replace("\\", "/");
				int i = clientFileName.lastIndexOf('/');
				// file1.zip
				// file2.zip
				return clientFileName.substring(i + 1);
			}
		}
		return null;
	}

}
