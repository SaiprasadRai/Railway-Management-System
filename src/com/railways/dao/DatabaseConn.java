package com.railways.dao;
import java.sql.Connection;
import java.sql.DriverManager;


public class DatabaseConn {
	  public static Connection getConnection()
	  throws Exception
	  {
		  Class.forName("com.mysql.jdbc.Driver");
		  Connection  conn = DriverManager.getConnection(
				  "jdbc:mysql://localhost:3306/test",
				  "root",
				  "root");
		
		  /*String driverName = "oracle.jdbc.driver.OracleDriver";
		  Class.forName(driverName);
		  Connection conn = DriverManager.getConnection(
		               "jdbc:oracle:thin:@localhost:1521:XE","ramkumar","ramkumar");
		*/
		return conn;
	  }

	}
