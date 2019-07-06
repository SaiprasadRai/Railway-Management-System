package com.railways.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;

import com.railways.dao.*;
import com.railways.controller.*;
import com.railways.mvc.*;



public class PrintTicketService {
	
	PrintTicketDAO ptd = new PrintTicketDAO();	
	public ArrayList printServiceTicket(String fname, String aadhar, String source, String destination) throws Exception {
		ArrayList a = null;
			a = ptd.printServiceTicket(fname, aadhar, source, destination);
		return a;
	}

}
