package src.dao;

import java.sql.*;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;


import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import src.model.ModelMVC;

public class DaoMVC {
	
	public static Connection connect() {
		Connection con=null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root"); 
			System.out.println("A user Connected");
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
		
	}

	public static int registerUser(ModelMVC mo1, String abc) {
		int i=0;
		Connection con=connect();
		
		try {
			PreparedStatement ps=(PreparedStatement) con.prepareStatement(abc);
			
			ps.setString( 1, mo1.getUname());
			ps.setString( 2, mo1.getPass());
			ps.setString( 3, mo1.getFname());
			ps.setString( 4, mo1.getLname());
			ps.setString( 5, mo1.getEmail());
			ps.setString( 6, mo1.getPhone());
			ps.setString( 7, mo1.getGender());
			ps.setString( 8, mo1.getState());
			
			i=ps.executeUpdate();			
			
			
			
		} catch (SQLException e) {
		
			e.printStackTrace();
		}
		
		return i;
	}

	public static ResultSet Loginuser(ModelMVC mo, String sql) {
		ResultSet rs=null;
		Connection con=connect();
		
		try {
			PreparedStatement ps=(PreparedStatement) con.prepareStatement(sql);
		  ps.setString(1, mo.getUname());
		  ps.setString(2, mo.getPass());
		  rs=ps.executeQuery();
		  
		  
		  
		 
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return rs;
	}
	public static ResultSet RegisterLoginuser(ModelMVC mo, String sql) {
		ResultSet rs=null;
		Connection con=connect();
		
		try {
			PreparedStatement ps=(PreparedStatement) con.prepareStatement(sql);
		  ps.setString(1, mo.getEmail());
		  ps.setString(2, mo.getStation());
		  ps.setString(3, mo.getPost());
		  rs=ps.executeQuery();
		  
		  
		  
		 
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return rs;
	}
}
