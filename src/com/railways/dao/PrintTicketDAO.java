package com.railways.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.railways.dao.*;
import com.railways.controller.*;
import com.railways.mvc.*;

import java.util.ArrayList;

public class PrintTicketDAO {
	
	public ArrayList printServiceTicket(String fname, String aadhar, String source, String destination)
	throws Exception
	{
		
		  Connection con = null;
		  Statement psmt = null;
		  ResultSet rs = null;
		 
			  /* Class.forName("com.mysql.jdbc.Driver");
		         con = DriverManager.getConnection(
		         "jdbc:mysql://localhost:3309/accdb","root","root"); 
		     */
			  con=DatabaseConn.getConnection(); 
			  psmt = con.createStatement();
			  rs = psmt.executeQuery("select * from bookticketusers where fname="+fname+"aadhar_no"+aadhar+"source"+source+"destination"+destination);
			  ArrayList result = new ArrayList();
			  if(rs.next())
			  {
				  result.add(rs.getString(1));
				  result.add(rs.getString(2));
				  
			  }
			  else
			  {
				  result.add("Invalid user");
			  }
			  con.close();
			  return result;

	}

}
