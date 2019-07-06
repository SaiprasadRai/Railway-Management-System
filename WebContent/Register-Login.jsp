<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register-Login</title>
<link rel="icon" href="irctc.png" type="image/png" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
        crossorigin="anonymous"/>
 <link rel="stylesheet" href="styles.css" />
</head>
<body>

<form action='RegisterLoginServlet' method='post'>
<h3 class="back">
	Railway Management System - Administrator
</h3>
<center>
	<img src="irctc.png" title="Railway Management System - Login to enter" height="205" width="205"/>
</center>
<div style="align:center" class="container-fluid"> 
<center>

<h4>Enter a existing email :<br/></h4>
	<input type="text"  name="email" placeholder="Enter email" style="width: 25%; padding: 12px 20px; margin: 8px 0; display: inline-block; border: 1px solid #8b8b8b; border-radius: 4px; box-sizing: border-box;"><br/>
<h4>Enter his station :<br/></h4>
	<input type="text" name="stn" placeholder="Enter your station" style="width: 25%; padding: 12px 20px; margin: 8px 0; display: inline-block; border: 1px solid #8b8b8b; border-radius: 4px; box-sizing: border-box;"><br/>
	  <br/>
   
<h4>Enter his post :<br/></h4>
	<input type="text" name="post" placeholder="Enter your post" style="width: 25%; padding: 12px 20px; margin: 8px 0; display: inline-block; border: 1px solid #8b8b8b; border-radius: 4px; box-sizing: border-box;"><br/>
	  <br/>
 
  <input type="submit"  value="LOGIN" name="btn1" style="font-size:26px; background-color:#2196F3; width: 27%; padding: 12px 20px; margin: 8px 0; display: inline-block; border: 1px solid #8b8b8b; border-radius: 4px; box-sizing: border-box;">
 </center>
 </div>
 
 
 
</form>

</body>

</html>

