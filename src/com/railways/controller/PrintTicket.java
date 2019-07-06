package com.railways.controller;
import java.io.IOException;
import java.util.ArrayList;

import com.railways.dao.*;
import com.railways.mvc.*;
import com.railways.service.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.railways.mvc.PassengerBookMVC;

@WebServlet(urlPatterns = {"/PrintTicketServlet"})
public class PrintTicket  extends HttpServlet{
	
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		//1.Retrieve all parameters from JSP page
		
		String fname=request.getParameter("fname");
		String aadhar=request.getParameter("aadhar");
		String source=request.getParameter("source");
		String destination=request.getParameter("destination");
		RequestDispatcher rd = null;
		
		PrintTicketService ps = new PrintTicketService();
		
		ArrayList a = null;
		try {
			
			 a  = ps.printServiceTicket(fname, aadhar, source, destination);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    
	 /*   java.util.Iterator i1=a.iterator();
		System.out.println("Trains from "+source+" to "+destination+" are  :");
		while(i1.hasNext())
		{
		System.out.println(i1.next());	
		}
		*/
		if (a==null) {
			rd = request.getRequestDispatcher("/PrintTicketSuccess.jsp");
						
		} else {
			rd = request.getRequestDispatcher("/PrintError.jsp");
		}
		rd.forward(request, response);
}
}
