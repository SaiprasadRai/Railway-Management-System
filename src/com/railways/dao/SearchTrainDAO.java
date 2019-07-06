package com.railways.dao;
import com.railways.dao.DatabaseConn;
import com.railways.mvc.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.railways.controller.*;
import com.railways.service.*;

public class SearchTrainDAO {
	public ArrayList searchTrain(String source, String dest)
	throws Exception
	  {
		  Connection con = null;
		  Statement pstmt = null;
		  ResultSet rs = null;
		 
			  /* Class.forName("com.mysql.jdbc.Driver");
		         con = DriverManager.getConnection(
		         "jdbc:mysql://localhost:3309/accdb","root","root"); 
		     */
			  con=DatabaseConn.getConnection(); 
			  pstmt = con.createStatement();
			  rs = pstmt.executeQuery("select * from train, trainstop where station_name="+source+" or station_name="+dest+" and train.trainid=trainstop.trainid ");
			  ArrayList result = new ArrayList();
			  if(rs.next())
			  {
				  result.add(rs.getString(1));
				  result.add(rs.getString(2));
				  
			  }
			  else
			  {
				  result.add("Invalid Source or destination");
			  }
			  con.close();
			  return result;
			  
			  
			  
		  
	  }

}
