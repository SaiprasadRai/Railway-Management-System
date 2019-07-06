<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.railways.controller.BookTicketController"%>
<%@page import="com.railways.dao.*"%>
<jsp:useBean id="bean" class="com.railways.mvc.PassengerBookMVC"/>
<jsp:setProperty property="*" name="bean"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
        crossorigin="anonymous"/>
<link rel="icon" href="irctc.png" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Your ticket is booked</title>
</head>
<body>
<s:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/test" user="root" password="root" var="conn"/>

	<center>
	<img src="happy.png" height="175" width="175"/><br/><br/>
	<c:forEach items="${record.rows}" var="row">
	<h4>Congratulations! <% out.println(bean.getFname()); %> Your Ticket is booked!<br/>And your ticket no. is:<br/><c:out value="${row.ticket_no}"></c:out><b>In process <a href="PrintTicket.jsp">View your ticketno</a><b></h4></c:forEach>
	<h4>Happy Journey!</h4>
	<br/><br/><br/>
	Print ticket <a href="PrintTicket.jsp"><input type="button" value="Print Ticket"  name="btn6" style="font-size:12px; background-color:green; color:white; width: 27%; padding: 12px 20px; margin: 8px 0; display: inline-block; border: 1px solid #8b8b8b; border-radius: 4px; box-sizing: border-box;"></a>
	<h4>Get back to Ticket Booking: <a href="BookTicket.jsp"><input type="button" value="Add Another Passenger"  name="btn5" style="font-size:12px; background-color:#F9A825; width: 27%; padding: 12px 20px; margin: 8px 0; display: inline-block; border: 1px solid #8b8b8b; border-radius: 4px; box-sizing: border-box;">
</a> OR Visit<br/>
	Home Page <a href="Index.jsp">Home</a>
	<br/>
	
	</h4>
</center>
</body>
</html>