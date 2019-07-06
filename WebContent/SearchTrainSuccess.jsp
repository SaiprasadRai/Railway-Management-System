<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="s" uri="http://java.sun.com/jsp/jstl/sql" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="icon" href="irctc.png" type="image/png" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
        crossorigin="anonymous"/>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Searched Results</title>
</head>
<body>
<center>
<h3>Searched Results:</h3>
<h4>Note Train, train id, source and destination</h4>
</center>
<s:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/test" user="root" password="root" var="conn"/>

<s:query var="record" dataSource="${conn}">
<s:param value='<%=request.getParameter("source") %>'></s:param>
<s:param value='<%=request.getParameter("destination") %>'></s:param>

select * from train, trainstop where station_name in (?,?) and train.trainid=trainstop.trainid 
</s:query>
<table border="2" class="table table-striped" width="100%">
<thead>
<tr>
<!--  select * from train, trainstop where station_name= ? or station_name= ? and train.trainid=trainstop.trainid and train.destination=? -->
<th>Train ID</th>
<th>Train Name</th>
<th>Train ID</th>
<th>Station Name</th>
<th>Arrival time</th>
<th>Departure time</th>
</thead>



<tbody>
</tr>
<c:forEach items="${record.rows}" var="row">

<tr align="center">

<td>
<c:out value="${row.trainid}"></c:out></td>
<td><c:out value="${row.train_name}"></c:out></td>
<td><c:out value="${row.trainid}"></c:out></td>
<td><c:out value="${row.station_name}"></c:out></td>
<td><c:out value="${row.arrival_time}"></c:out></td>
<td><c:out value="${row.departure_time}"></c:out></td>


</c:forEach>
</tbody></table><center>
<a href="BookTicket.jsp"><button type="button" class="bton11" style="width:35%;  padding: 12px 20px; margin: 8px 0; display: inline-block; border: 1px solid #8b8b8b; border-radius: 4px; box-sizing: border-box; background-color:#00E5FF; color: black;font-size: 26px;">Book Your Ticket</button></a>
</center></body>
</html>