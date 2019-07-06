package src.controller;
import src.model.ModelMVC;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import src.dao.DaoMVC;
import src.model.ModelMVC;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//1.Retrieve all parameters from JSP page
		
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String uname=request.getParameter("uname");
		String email=request.getParameter("email");
		String pass=request.getParameter("pass");
		String mobile=request.getParameter("mobile");
		String gender=request.getParameter("gender");
		String userstate=request.getParameter("userstate");
		String station=request.getParameter("station");
		String post=request.getParameter("post");
		
		
		if(fname.equals(null)||fname==""||lname.equals(null)||lname==""||uname.equals(null)||uname==""||email.equals(null)||email==""||pass.equals(null)||pass==""||mobile.equals(null)||mobile==""||gender.equals(null)||gender==""||userstate.equals(null)||userstate==""||station.equals(null)||station==""||post.equals(null)||post=="")
		   {
			  // request.setAttribute("msg", "All fields are mandatory");
			   getServletContext().getRequestDispatcher("/registerAdmin.jsp").forward(request, response);
		   }
		   else
		   {
			
		//2.Set all values in Model class object
		
		ModelMVC mo1 = new ModelMVC();
		
		mo1.setUname(uname);
		mo1.setPass(pass);
		mo1.setFname(fname);
		mo1.setLname(lname);
		mo1.setEmail(email);
		mo1.setPhone(mobile);
		mo1.setGender(gender);
		mo1.setState(userstate);
		mo1.setGender(station);
		mo1.setState(post);
		
		
		
		//3.Call a method in DAO class to insert data in table
		
		String abc="insert into users values(?,?,?,?,?,?,?,?,?,?)";
		int i=DaoMVC.registerUser(mo1,abc);
		
		if(i!=0)
		{
		  System.out.println("A new User registered!");
		  
		  request.setAttribute("msg", "Registration Succesful.. Login here");
		  getServletContext().getRequestDispatcher("/AdminLogin.jsp").forward(request,response);
		}
		else
		{
			System.out.println("Value not inserted");
			getServletContext().getRequestDispatcher("/logerror.jsp").forward(request,response);
		}
		
	}

}
}
