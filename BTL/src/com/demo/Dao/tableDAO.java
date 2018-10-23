package com.demo.Dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.demo.Model.table;



public class tableDAO {

	public static boolean addTable(table tbl){
		
		String sql = "insert INTO `restaurant`.`table`(`type_table`,`number_of_people`,`status_table`)value(?,?,?)";
		
		 try {
	        	PreparedStatement pstm = ConnectionDAO.getMySQLConnection().prepareStatement(sql);
	       	 
	        	pstm.setString(1,tbl.getType_table());
	        	pstm.setString(2, tbl.getNumber_of_people());
	        	pstm.setString(3, tbl.getStatus_table());
				
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
	
	public static List<table> dsTable(){
		
		
		String sql = "SELECT *  FROM `restaurant`.`table`";
		PreparedStatement pstm;
		List<table> listTable= new ArrayList<>();
		try {
			pstm = ConnectionDAO.getMySQLConnection().prepareStatement(sql);
			  ResultSet rs = pstm.executeQuery();
			  
			
			  while (rs.next()) {
				  int id = rs.getInt("idTable");
				  String type_table = rs.getString("type_table");
				  String number_of_people = rs.getString("number_of_people");
				  String status_table = rs.getString("status_table");
				  listTable.add(new table(id, type_table, number_of_people,status_table));
				  
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		  
		
		return listTable;
		
		
		
	}

}
