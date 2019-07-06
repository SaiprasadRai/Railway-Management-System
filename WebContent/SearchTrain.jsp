<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="icon" href="irctc.png" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Book Ticket: Indian Railways</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Booking Ticket</title>
<link rel="stylesheet" href="css/normalize.css">
<link href='https://fonts.googleapis.com/css?family=Nunito:400,300' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="SearchTrain.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Train</title>
</head>
<body background="express.png">
	<form action="SearchTrainServlet" method="post">
      
        <h1>Search Train</h1>
        
        <fieldset>
          <legend><span class="number">1</span>New Booking</legend>
        <label>From:</label>
        <input type="text" name="source">
        
        <label>To:</label>
        <input type="text" name="destination">       

        </fieldset>
        <button type="submit">Search Train</button>
      </form>

</body>
</html>