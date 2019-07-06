<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:useBean id="bean" class="src.model.ModelMVC"/>
<jsp:setProperty property="*" name="bean"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Railways Management System</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
        crossorigin="anonymous"/>
<link rel="stylesheet" href="styles.css" />
</head>
<body background="train1.png">
<h2 style="text-align:center">Indian Railways</h2>
<s:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/test" user="root" password="root" var="conn"/>

<h6 style="float:right"><% out.println(bean.getUname()); %></h6>
<br/>
<br/>

<div class="container">
<table width="100%">
		<tr><div class="row" style="width: 100%;">
			<td><div class="column" style="width: 75%; background:#EEEEEE">
                <div class="card" style="box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);text-decoration: none;">
                    <a href="SearchTrain.jsp"><br/><br/>
                   		 <h3>New Booking</h3><br/>
                    </a>
                </div>
            </div></td><td>
			<div class="column" style="width: 75%; background:#EEEEEE">
                <div class="card" style="box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);text-decoration: none;">
                    <a href="SearchTrain.jsp"><br/><br/>
                   		 <h3>PNR Status</h3><br/>
                    </a>
                </div>
            </div></td>
        </div></tr>
<tr>        <div class="row" style="width: 100%;"> 
    <td>        <div class="column" style="width: 75%; background:#EEEEEE">
                <div class="card" style="box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);text-decoration: none;">
                    <a href="SearchTrain.jsp"><br/><br/>
                   		 <h3>Book Meal</h3><br/>
                    </a>
                </div>
            </div></td>
            <td><div class="column" style="width: 75%; background:#EEEEEE">
                <div class="card" style="box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);text-decoration: none;">
                    <a href="SearchTrain.jsp"><br/>
                   		 <h3>Your Profile</h3><br/>
                    </a>
                </div>
            </div></td>
        </div></tr>
        <tr><div class="row" style="width: 100%;"> 
           <td> <div class="column" style="width: 75%; background:#EEEEEE">
                <div class="card" style="box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);text-decoration: none;">
                    <a href="SearchTrain.jsp"><br/><br/>
                   		 <h3>Cancel Ticket</h3><br/>
                    </a>
                </div>
            </div></td>
          <td>  <div class="column" style="width: 75%; background:#EEEEEE">
                <div class="card" style="box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);text-decoration: none;">
                    <a href="Login.jsp"><br/><br/>
                   		 <h3>Log Out</h3><br/>
                    </a>
                </div>
            </div></td>
        </div></tr>    
</div>
</body>
</html>