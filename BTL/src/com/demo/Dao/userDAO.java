package com.demo.Dao;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.demo.Model.tableorder;
import com.demo.Model.user;

public class userDAO {
	
	public static boolean addUser(user user) {

		String sql = "INSERT INTO user(`user_name`,`user_account`,`user_password`,`user_creatday`,`user_photo`,`user_email`) VALUES(?,?,?,?,?,?)";

		try {
			PreparedStatement stm = ConnectionDAO.getMySQLConnection().prepareStatement(sql);
			stm.setString(1, user.getUser_name());
			stm.setString(2, user.getUser_account());
			stm.setString(3, user.getUser_password());
			stm.setString(4, user.getUser_createday());
			stm.setString(5, user.getUser_photo());
			stm.setString(6, user.getUser_email());
			if (stm.executeUpdate() > 0) {
				return true;
			}

		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	public static boolean checkUser(String user, String password) {
		String sql = "SELECT * FROM user WHERE user.`user_name`=? AND user.`user_password`=?;";
		try {
			PreparedStatement stm = ConnectionDAO.getMySQLConnection().prepareStatement(sql);
			stm.setString(1, user);
			stm.setString(2, password);
			if (stm.executeUpdate() > 0) {
				return true;
			}
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public static List<user> getDsUsers() {
		 PreparedStatement pstm;
		String sql = "SELECT * FROM user ";
		List<user> users = new ArrayList<>();
		try {
			pstm = ConnectionDAO.getMySQLConnection().prepareStatement(sql);
			  ResultSet rs = pstm.executeQuery();
			  
			
			  while (rs.next()) {
				  int user_id = rs.getInt("user_id");
				  String user_name = rs.getString("user_name");
				  String user_lastname = rs.getString("user_lastname");
				  String user_fullname = rs.getString("user_fullname");
				  String user_email = rs.getString("user_email");
				  String user_account = rs.getString("user_account");
				  String user_password = rs.getString("user_password");
				  String user_createday = rs.getString("user_creatday");
				  String user_photo = rs.getString("user_photo");
				 
				  users.add(new user(user_id, user_name, user_lastname, user_fullname, user_email, user_account, user_password, user_createday, user_photo));
			
		
		
			  	}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	
		return users;
	}

}
