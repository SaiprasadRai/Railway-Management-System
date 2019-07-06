package com.railways.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import com.railways.dao.*;
import com.railways.controller.*;
import com.railways.mvc.*;

public class BookTicketService {
	
	BookTicketDAO booktk = new BookTicketDAO();
	
	public int bookTicketService(PassengerBookMVC pbm) {
	int i=booktk.bookTicket(pbm);
	return i;  
	}  
	

}
