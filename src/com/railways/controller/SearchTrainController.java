package com.railways.controller;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.railways.dao.*;
import com.railways.mvc.*;
import com.railways.service.*;

@WebServlet(urlPatterns = {"/SearchTrainServlet"})
public class SearchTrainController  extends HttpServlet{
	
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String source=request.getParameter("source");
	String destination=request.getParameter("destination");
	RequestDispatcher rd = null;
		
		SearchTrainDAO std = new SearchTrainDAO();
	
		
		ArrayList a = null;
		try {
			
			 a  = std.searchTrain(source, destination);
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
			rd = request.getRequestDispatcher("/SearchTrainSuccess.jsp");
						
		} else {
			rd = request.getRequestDispatcher("/SearchError.jsp");
		}
		rd.forward(request, response);
	
	}
}
