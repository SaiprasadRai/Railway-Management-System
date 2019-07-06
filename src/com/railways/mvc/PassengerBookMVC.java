package com.railways.mvc;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.mysql.jdbc.Statement;
import com.railways.dao.*;

public class PassengerBookMVC {

	private String mname;
	private String age;
	private String fname;
	private String lname;
	private String email;
	private String phone;
	private String gender;
	private String nation;
	private String source;
	private String dest;
	private String trainid;
	private String trainname;
	private String date;
	private String time;
	private String aadhar;
	private int ticket;
	private int ticketPrice;
	
	
	
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getCountry() {
		return nation;
	}
	public void setCountry(String nation) {
		this.nation = nation;
	}
	public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
	public String getDest() {
		return dest;
	}
	public void setDest(String dest) {
		this.dest = dest;
	}
	public String getTrainid() {
		return trainid;
	}
	public void setTrainid(String trainid) {
		this.trainid = trainid;
	}
	public String getTrainname() {
		return trainname;
	}
	public void setTrainname(String trainname) {
		this.trainname = trainname;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getAadhar() {
		return aadhar;
	}
	public void setAadhar(String aadhar) {
		this.aadhar = aadhar;
	}
	public int getTicketPrice() {
		return ticketPrice;
	}
	public void setTicketPrice(int ticketPrice) {
		this.ticketPrice = ticketPrice;
	}
	public String getTime() {
		return time;
	}
	
	public void setTime(String time) {
		this.time = time;
	}
	public int getTicket() {
		return ticket;
	}
	public void setTicket() {
		Connection con = null;
		

		try
		  {
			  /* Class.forName("com.mysql.jdbc.Driver");
		         con = DriverManager.getConnection(
		         "jdbc:mysql://localhost:3309/accdb","root","root"); 
		     */
			  con=DatabaseConn.getConnection(); 
			  String a = this.fname;
			  String b = this.mname;
			  String c = this.lname;
			  String d = this.source;
			  String e = this.dest;
			  String f = this.date;
			  String g = this.time;
					  
			
			java.sql.Statement stmt = con.createStatement();
			 ResultSet rs = stmt.executeQuery("select * from bookticketusers where fname="+a+"mname="+b+"lname="+c+"source="+d+"destination"+e+"date"+f+"time"+g);
			  while(rs.next())
			  {
			  this.ticket = rs.getInt(15);
			  System.out.println(rs.getInt(15));
			  System.out.println(ticket);
			  }
			  con.close();
			  
			  
		  }
		  catch(Exception ex)
		  {
			  System.out.println(ex.toString());
			  
		  }
		
	}



}
