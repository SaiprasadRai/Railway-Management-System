<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="s" uri="http://java.sun.com/jsp/jstl/sql" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
        crossorigin="anonymous"/>
        <link rel="icon" href="irctc.png" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Print your ticket</title>
</head>
<body bgcolor="#B3E5FC">
</center>
<s:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/test" user="root" password="root" var="conn"/>
<s:query var="record" dataSource="${conn}">
<s:param value='<%=request.getParameter("fname") %>'></s:param>
<s:param value='<%=request.getParameter("aadhar") %>'></s:param>
<s:param value='<%=request.getParameter("source") %>'></s:param>
<s:param value='<%=request.getParameter("destination") %>'></s:param>
select * from bookticketusers where fname= ? and aadhar_no= ? and source= ? and destination= ?
</s:query>
<img src="indiantrains.png"  height="95" width="95" style="float:left"/> 
<img src="irctc1.png"  height="95" width="95" style="float:right"/> 
<h2><u><center>IRCTCs e-Ticketng Service</center></u></h2>
<h3><u><center>Electronic Reservation Slip (Personal User)</center></u></h3><br/>
<p>1. This ticket wil be valid only if the passenger brings the ID proof with him. If found without following ID proof then he will be charged according to Railway Rules.</p>
<p>2. If a confirmed ticket is cancelled up to 48 hours before the scheduled departure of train, cancellation charges will be deducted at Rs. 240 for AC First Class/Executive Class, Rs. 200 for AC 2 Tier/First Class, Rs. 180 for AC 3 Tier/AC Chair car/ AC 3 Economy, Rs.120 for Sleeper Class and Rs.60 for Second Class. Cancellation charges are levied on a per passenger basis.</p>
<br/><br/><br/>
<h3>Journey Details:</h3><br/>
<table width="100%">
	<tr>
	<th>Ticket No</th>
	<th>Train ID</th>
	<th>Train Name</th>
	<th>Date</th>
	<th>Time</th>
	</tr>
	<tr>
	<c:forEach items="${record.rows}" var="row">
	<td><b><c:out value="${row.ticket_no}"></c:out></b></td>	
	<td><c:out value="${row.trainid}"></c:out></td>
	<td><c:out value="${row.train_name}"></c:out></td>
	<td><c:out value="${row.date}"></c:out></td>
	<td><c:out value="${row.time}"></c:out></td></tr>
	</c:forEach>
	</tr>
</table>
<br/><br/>
<h3>Passenger Details</h3><br/>
<table width="100%">
<tr>
<th>First Name</th>
<th>Middle Name</th>
<th>Last Name</th>
<th>Age</th>
<th>Email</th>
<th>Phone</th>
<th>Gender</th>
<th>Aadhar No</th>
<th>Nation</th>
</tr>
<tr>
<c:forEach items="${record.rows}" var="row">
<td><c:out value="${row.fname}"></c:out></td>
<td><c:out value="${row.mname}"></c:out></td>
<td><c:out value="${row.lname}"></c:out></td>
<td><c:out value="${row.age}"></c:out></td>
<td><c:out value="${row.email}"></c:out></td>
<td><c:out value="${row.phone}"></c:out></td>
<td><c:out value="${row.gender}"></c:out></td>
<td><c:out value="${row.aadhar_no}"></c:out></td>
<td><c:out value="${row.nation}"></c:out></td>
</c:forEach>
</tr>
</table>
<br/><br/>
<h3>Route Details</h3><br/>
<table width="100%">
<tr>
<th>Source</th>
<th>Destination</th>
<th>Amount</th>
</tr>
<tr>
<c:forEach items="${record.rows}" var="row">
<td><c:out value="${row.source}"></c:out></td>
<td><c:out value="${row.destination}"></c:out></td>
<td><c:out value="${row.ticket_amount}"></c:out></td>
</c:forEach>
</tr>
</table>
<center>
<h3><b>Happy Journey</b></h3><br/>
<input type="button" value="Print Ticket"  name="printbtn" style="font-size:12px; background-color:#00C853; color:white; width: 27%; padding: 12px 20px; margin: 8px 0; display: inline-block; border: 1px solid #8b8b8b; border-radius: 4px; box-sizing: border-box;" onclick="window.print()">
</center>
</body>
</html>