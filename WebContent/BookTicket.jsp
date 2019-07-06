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
<link rel="stylesheet" href="booking.css">
</head>
<body background="express.png">
	<form action="BookTicketServlet" method="post">
      
        <h1>New Booking</h1>
        
        <fieldset>
          <legend><span class="number">1</span>Passenger's Basic info</legend>
          <label>First Name:</label>
          <input type="text" name="fname">

          <label>Father/Guardian name:</label>
          <input type="text" name="mname">

          <label>Last Name:</label>
          <input type="text" name="lname">
<br/>
          <label>Gender:</label>
          <input type="radio" value="male" name="gender"><label class="light" for="male">MALE</label><br>
          <input type="radio" value="female" name="gender"><label class="light" for="female">FEMALE</label><br>
     <br/>     
          <label>Age:</label>
          <input type="radio" value="under_18" name="age"><label class="light">Under 18</label><br>
          <input type="radio" value="between_18-59" name="age"><label class="light">Between 18-59</label><br>
          <input type="radio" value="over_60" name="age"><label class="light">60 or older</label>
          <br/>
          <label>Mobile No.(Indian NO.):</label>
          <input type="text" maxlength="10" name="mobile">
          <br/>
          <label>Aadhar No.:</label>
          <input type="text" name="aadhar">
          <br/>
          <label>Email id:</label>
          <input type="text" name="email">
          <br/>
          <label>Nationality:</label>
          <input type="text" name="nation">	  
        
        
        
        </fieldset>
        
        <fieldset>
          <legend><span class="number">2</span>Passenger's Journey</legend>
        </fieldset>
        <fieldset>
        <label>Train Id:</label>
        <input type="text" name="trainid">
        
        <label>Train Name:</label>
        <input type="text" name="trname">
        
        <label>Boarding At:</label>
        <input type="text" name="source">
        
        <label>Destination:</label>
        <input type="text" name="destination">
        
        <label>Date(Enter in YYYY-MM-DD format):</label>
        <input type="text" name="date">
        
        <label>Time(Enter in 24 hr. format):</label>
        <input type="text" name="time">       

        </fieldset>
        <button type="submit">Book Ticket</button>
      </form>

</body>
</html>