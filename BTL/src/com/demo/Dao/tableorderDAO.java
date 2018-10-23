package com.demo.Dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.demo.Model.foodtype;
import com.demo.Model.tableorder;
import com.demo.servlet.table;

public class tableorderDAO {
public static boolean addTableorder(tableorder t){
		
	 String sql = "INSERT INTO `restaurant`.`tableorder`(`nameCustomer`,`phoneNumber`,`numberOfPeople`,`time`,`note`,`idtable`)VALUES(?,?,?,?,?,?)";  
	
		
     try {
     	PreparedStatement pstm = ConnectionDAO.getMySQLConnection().prepareStatement(sql);
    	 
			pstm.setString(1, t.getName_customer());
			pstm.setString(2,t.getPhone_number());
			pstm.setInt(3, t.getNumber_of_people());
			pstm.setString(4, t.getTime());
			pstm.setString(5, t.getNote());
			pstm.setInt(6, t.getIdTable());			
			 
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
public static List<tableorder> getDSTableOrder(){
	 String sql = "SELECT *  FROM `restaurant`.`tableorder`";
	 PreparedStatement pstm;
	  List<tableorder> listTableorder = new ArrayList<>();
	try {
		pstm = ConnectionDAO.getMySQLConnection().prepareStatement(sql);
		  ResultSet rs = pstm.executeQuery();
		  
		
		  while (rs.next()) {
			  int idTableOrder = rs.getInt("idTableOrder");
			  String nameCustomer = rs.getString("nameCustomer");
			  String phoneNumber = rs.getString("phoneNumber");
			  int num = rs.getInt("numberOfPeople");
			  String time = rs.getString("time");
			  String note = rs.getString("note");
			  int idTable = rs.getInt("idtable");
			  
			  listTableorder.add(new tableorder(idTableOrder, nameCustomer, phoneNumber, num, time, note, idTable));
			  
		}
	} catch (ClassNotFoundException | SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	  
	
	return listTableorder;
}


     
    
	
}
