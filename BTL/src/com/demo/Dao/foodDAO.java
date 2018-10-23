package com.demo.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.demo.Model.food;
import com.demo.Model.foodtype;

public class foodDAO {
	
	
	public static boolean addFood(food f) {
		
		 String sql = "INSERT INTO `restaurant`.`food`(`nameFood`,`priceFood`,`time`,`idFoodType`,`anh`)VALUES(?,?,?,?,?)";
		 
		
		 
	        try {
	        	PreparedStatement pstm = ConnectionDAO.getMySQLConnection().prepareStatement(sql);
	       	 
				pstm.setString(1, f.getNamefood());
				   pstm.setInt(2, f.getPriceFood());
			        pstm.setString(3, f.getTime());
			        pstm.setInt(4,f.getIdFoodtype());
			        pstm.setString(5, f.getAnh());
			        if(pstm.executeUpdate()>0){
			        	return true;
			        }
			       
			} catch (SQLException e) {
				e.printStackTrace();
				
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	        
	        return false;
	 
	}
	
	public static List<food> getDSFood(){
		 String sql = "SELECT *  FROM `restaurant`.`food`";
		 PreparedStatement pstm;
		  List<food> listFood = new ArrayList<>();
		try {
			pstm = ConnectionDAO.getMySQLConnection().prepareStatement(sql);
			  ResultSet rs = pstm.executeQuery();
			  
			
			  while (rs.next()) {
				  int idFood = rs.getInt("idFood");
				  String nameFood = rs.getString("nameFood");
				  int priceFood = rs.getInt("priceFood");
				  String time = rs.getString("time");
				  int idFoodType = rs.getInt("idFoodType");
				  String anh = rs.getString("anh");
				  
				  listFood.add(new food(idFood, nameFood, priceFood, time, idFoodType, anh));
				  
				  
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		  
		
		return listFood;
	}

}
