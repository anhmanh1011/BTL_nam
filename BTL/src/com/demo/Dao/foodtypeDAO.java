package com.demo.Dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.demo.Model.foodtype;

public class foodtypeDAO {
	
	public static List<foodtype> getDSFoodtype(){
		 String sql = "SELECT *  FROM `restaurant`.`foodTYPE`";
		 PreparedStatement pstm;
		  List<foodtype> listFoodtype = new ArrayList<>();
		try {
			pstm = ConnectionDAO.getMySQLConnection().prepareStatement(sql);
			  ResultSet rs = pstm.executeQuery();
			  
			
			  while (rs.next()) {
				  int id = rs.getInt("idFoodType");
				  String nameFoodType = rs.getString("nameFoodType");
				  String FoodTypecol = rs.getString("FoodTypecol");
				  listFoodtype.add(new foodtype(id, nameFoodType, FoodTypecol));
				  
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		  
		
		return listFoodtype;
	}
	
	public static boolean notExist(String tenLoai){
		String sql_exist = "select * from foodtype where nameFoodType=?";
		 
	
		try {
			PreparedStatement ps =  ConnectionDAO.getMySQLConnection().prepareStatement(sql_exist);
			ps.setString(1, tenLoai);
			ResultSet rs = ps.executeQuery();
			
			if(rs.next())
				return false;
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return true;
	}
	
	public static boolean addFoodType(foodtype ft){
		
		
		if(notExist(ft.getNameFoodType())){
		 String sql = "INSERT INTO `restaurant`.`foodtype`(`nameFoodType`)VALUES(?)";
		 
			
		 
	        
	        try {
	        	PreparedStatement pstm = ConnectionDAO.getMySQLConnection().prepareStatement(sql);
	       	 
				pstm.setString(1, ft.getNameFoodType());
				 
			        if(pstm.executeUpdate()>0){
			        	return true;
			        }
			       
			} catch (SQLException e) {
				e.printStackTrace();
				
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	        
	        return false;
	 
		
		
	}

}
