package com.railways.dao;

import com.railways.dao.DatabaseConn;
import com.railways.mvc.*;
import com.railways.controller.*;
import com.railways.service.*;
import java.sql.*;
import java.util.ArrayList;

public class BookTicketDAO {
	public int bookTicket(PassengerBookMVC obj)
	  {
		  Connection con = null;
		  PreparedStatement pstmt = null;
		  try
		  {
			  /* Class.forName("com.mysql.jdbc.Driver");
		         con = DriverManager.getConnection(
		         "jdbc:mysql://localhost:3309/accdb","root","root"); 
		     */
			  con=DatabaseConn.getConnection(); 
			  
			  String ins_str = 
				  "insert into bookticketusers (fname,mname,lname,age,email,phone,gender,nation,trainid,train_name,source,destination,date,time,aadhar_no,ticket_amount) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			  
			  pstmt = con.prepareStatement(ins_str);
			  
			  pstmt.setString(1,obj.getFname());
			  pstmt.setString(2,obj.getMname());
			  pstmt.setString(3,obj.getLname());
			  pstmt.setString(4,obj.getAge());
			  pstmt.setString(5,obj.getEmail());
			  pstmt.setString(6,obj.getPhone());
			  pstmt.setString(7,obj.getGender());
			  pstmt.setString(8,obj.getCountry());
			  pstmt.setString(9,obj.getTrainid());
			  pstmt.setString(10,obj.getTrainname());
			  pstmt.setString(11,obj.getSource());
			  pstmt.setString(12,obj.getDest());
			  pstmt.setString(13,obj.getDate());
			  pstmt.setString(14,obj.getTime());
			  pstmt.setString(15,obj.getAadhar());
			  pstmt.setInt(16,obj.getTicketPrice());
			 
			  
			  
			  int updateCount = pstmt.executeUpdate();
			  
			  con.close();
			  
			  return updateCount;
			  
			  
		  }
		  catch(Exception ex)
		  {
			  System.out.println(ex.toString());
			  return 0;
		  }
		  
	  }
	  

}
