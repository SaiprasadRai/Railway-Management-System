package src.controller;
import com.railways.dao.DatabaseConn;
import java.sql.*;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import src.dao.DaoMVC;
import src.model.ModelMVC;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/RegisterLoginServlet")
public class RegisterLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

   String email=request.getParameter("email");
   String stn=request.getParameter("stn");
   String post=request.getParameter("post");
  
   
  if(email.equals(null)||email==""||stn.equals(null)||stn==""||post.equals(null)||post=="")
   {
	  // request.setAttribute("msg", "All fields are mandatory");
	   getServletContext().getRequestDispatcher("/Register-Login.jsp").forward(request, response);
   }
   else
   {
	   //2.Set all values in model class
	   
	   ModelMVC mo=new ModelMVC();
	   mo.setEmail(email);
	   mo.setStation(stn);
	   mo.setPost(post);
	   
	   String sql="select * from adminusers where email=? and station=? and post=?";
	   
	   
	   //3.call a method in dao layer to select data from table
	   
	   ResultSet rs=DaoMVC.RegisterLoginuser(mo,sql);
	   
	   try {
		if(rs.next()) 
		  {
			getServletContext().getRequestDispatcher("/registerAdmin.jsp").forward(request,response);
			   
		   }
		else
		{
			getServletContext().getRequestDispatcher("/AdminLogin.jsp").forward(request,response);
		}
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
	}
	     
	   }
   
	}
}


