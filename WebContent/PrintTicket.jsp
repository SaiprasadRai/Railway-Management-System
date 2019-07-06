<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.railways.controller.BookTicketController"%>
<%@page import="com.railways.dao.*"%>
<jsp:useBean id="bean" class="com.railways.mvc.PassengerBookMVC"/>
<jsp:setProperty property="*" name="bean"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="icon" href="irctc.png" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Book Ticket: Indian Railways</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Print Ticket</title>
<link rel="stylesheet" href="css/normalize.css">
<link href='https://fonts.googleapis.com/css?family=Nunito:400,300' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="SearchTrain.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Print Ticket</title>
</head>
<body background="printTrain.png">
	<form action="PrintTicketServlet" method="post">
      
        <h1>Print Your Ticket</h1>
        
        <fieldset>
          <legend><span class="number1">1</span>Enter your Details</legend>
		<label>Passenger's Name:</label>
        <input type="text" name="fname">
       
        <label>Aadhar No:</label>
        <input type="text" name="aadhar">

        <label>From:</label>
        <input type="text" name="source">
        
        <label>To:</label>
        <input type="text" name="destination">       

        </fieldset>
        <button type="submit">Display your ticket</button>
      </form>

</body>
</html>