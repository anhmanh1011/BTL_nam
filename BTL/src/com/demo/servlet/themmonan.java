package com.demo.servlet;

import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.demo.Dao.foodDAO;
import com.demo.Dao.foodtypeDAO;
import com.demo.Model.food;

/**
 * Servlet implementation class themmonan
 */
@WebServlet("/themmonan")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 1, 
maxFileSize = 1024 * 1024 , 
maxRequestSize = 1024 * 1024 * 2) 
public class themmonan extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	
	
	public static final String SAVE_DIRECTORY = "WebContent/resource/img/food";
    public themmonan() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		foodtypeDAO fd = new foodtypeDAO();
		request.setAttribute("dsFoodType", fd.getDSFoodtype());
		
		request.getRequestDispatcher("WEB-INF/views/Themmonan.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 // Đường dẫn tuyệt đối tới thư mục gốc của web app.
		request.setCharacterEncoding("UTF-8");
		
		 String fullSavePath = "C:\\Users\\daodu\\workspace\\BTL\\WebContent\\resource\\img\\food";
		 System.out.println(fullSavePath);
		 fullSavePath = fullSavePath.replace('\\', '/');
       
      // Thư mục để save file tải lên.
        
       try {
    	   System.out.println(fullSavePath);
           String fileName="";
           File fileSaveDir = new File(fullSavePath);
           // Danh mục các phần đã upload lên (Có thể là nhiều file).
           for (Part part : request.getParts()) {
                fileName = extractFileName(part);
               if (fileName != null && fileName.length() > 0) {
                   String filePath = fullSavePath + File.separator + fileName;
                   filePath = filePath.replace('\\', '/');
                  
                   System.out.println("Write attachment to file: " + fileName);

                   // Ghi vào file.
                   part.write(filePath);
                   String tenMonAn = request.getParameter("tenMonAn");
                   int idFoodtype = Integer.parseInt(request.getParameter("idFoodtype"));
                   String time = request.getParameter("time");
                   int gia = Integer.parseInt(request.getParameter("gia"));
                  
                   food d = new food(0, tenMonAn, gia, time, idFoodtype, fileName);
                   foodDAO fd = new foodDAO();
                   fd.addFood(d);
                   System.out.println(d);
               }
              
           }
           
         
   
           response.sendRedirect(request.getContextPath() + "/home");

		
	} catch (Exception e) {
		response.getWriter().println(e);
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
