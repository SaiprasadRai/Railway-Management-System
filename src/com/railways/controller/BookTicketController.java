package com.railways.controller;
import java.io.IOException;
import com.railways.dao.*;
import com.railways.mvc.*;
import com.railways.service.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.railways.mvc.PassengerBookMVC;

@WebServlet(urlPatterns = {"/BookTicketServlet"})
public class BookTicketController  extends HttpServlet{
	
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		//1.Retrieve all parameters from JSP page
		
		String fname=request.getParameter("fname");
		String mname=request.getParameter("mname");
		String lname=request.getParameter("lname");
		String email=request.getParameter("email");
		String age=request.getParameter("age");
		String mobile=request.getParameter("mobile");
		String gender=request.getParameter("gender");
		String nation=request.getParameter("nation");
		String trainid=request.getParameter("trainid");
		String trname=request.getParameter("trname");
		String source=request.getParameter("source");
		String destination=request.getParameter("destination");
		String date=request.getParameter("date");
		String time=request.getParameter("time");
		String aadhar=request.getParameter("aadhar");
		
		if(fname.equals(null)||fname==""||mname.equals(null)||mname==""||lname.equals(null)||lname==""||email.equals(null)||email==""||age.equals(null)||age==""||mobile.equals(null)||mobile==""||gender.equals(null)||gender==""||nation.equals(null)||nation==""||trainid.equals(null)||trainid==""||trname.equals(null)||trname==""||source.equals(null)||source==""||destination.equals(null)||destination==""||nation.equals(null)||nation==""||date.equals(null)||date==""||time.equals(null)||time==""||aadhar.equals(null)||aadhar=="")
		   {
			  // request.setAttribute("msg", "All fields are mandatory");
			   getServletContext().getRequestDispatcher("/BookTicket.jsp").forward(request, response);
		   }
		   else
		   {
		
		int price =  Integer.parseInt(trainid);
		int num = price;
		System.out.println(num);
		num = num%1000;
		if(num<150) {
			num = num+150;
		}
		else if(num>150 && num<250) {
			num = num + 188;
		}
		else if(num>250 && num<450) {
			num = num + 88;
		}
		//System.out.println("The price is "+num);
		price = num;
		System.out.println("The price is "+price);
				
		//2.Set all values in Model class object
		
		PassengerBookMVC pbm2 = new PassengerBookMVC();
		
		pbm2.setMname(mname);
		pbm2.setAge(age);
		pbm2.setFname(fname);
		pbm2.setLname(lname);
		pbm2.setEmail(email);
		pbm2.setPhone(mobile);
		pbm2.setGender(gender);
		pbm2.setCountry(nation);
		pbm2.setTrainid(trainid);
		pbm2.setTrainname(trname);
		pbm2.setSource(source);
		pbm2.setDest(destination);
		pbm2.setDate(date);
		pbm2.setTime(time);
		pbm2.setAadhar(aadhar);
		pbm2.setTicketPrice(price);

		
		
		
		
		BookTicketService bookser = new BookTicketService();
		
		int i= bookser.bookTicketService(pbm2);
		
		if(i!=0)
		{
		  System.out.println("A new User "+fname+" "+source+" "+destination+" "+date+" "+time+" "+pbm2.getTicket()+" "+" booked a ticket!");
		  request.setAttribute("msg", "Registration Succesful.. Login here");
		  getServletContext().getRequestDispatcher("/TicketBookSuccess.jsp").forward(request,response);
		  
		}
		else
		{
			System.out.println("Error in booking ticket. Not Booked");
			getServletContext().getRequestDispatcher("/TicketBookError.jsp").forward(request,response);
		}
		
	}

}
}