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
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

   String uname=request.getParameter("uname");
   String pass=request.getParameter("pass");
   
  if(uname.equals(null)||uname==""||pass.equals(null)||pass=="")
   {
	  // request.setAttribute("msg", "All fields are mandatory");
	   getServletContext().getRequestDispatcher("/Login.jsp").forward(request, response);
   }
   else
   {
	   //2.Set all values in model class
	   
	   ModelMVC mo=new ModelMVC();
	   mo.setUname(uname);
	   mo.setPass(pass);
	   
	   String sql="select * from users where username=? and password=?";
	   
	   
	   //3.call a method in dao layer to select data from table
	   
	   ResultSet rs=DaoMVC.Loginuser(mo,sql);
	   
	   try {
		if(rs.next()) 
		  {
			getServletContext().getRequestDispatcher("/Client_Index.jsp").forward(request,response);
			   
		   }
		else
		{
			getServletContext().getRequestDispatcher("/Login.jsp").forward(request,response);
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


