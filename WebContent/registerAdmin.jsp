<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="icon" href="irctc.png" type="image/png" />
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Register Form</title>
  <link rel="stylesheet" href="css/normalize.css">
  <link href='https://fonts.googleapis.com/css?family=Nunito:400,300' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="register-form.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
        crossorigin="anonymous"/>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>registration</title>
</head>
<body background="reg.png">
  <div class="form">
      <form method="post" action="RegisterAdmin">
        <h3 class="back">
          Railway Management System
        </h3>

        <h1>Register Form</h1>

        <fieldset>
          <legend>
            <span class="number">1</span>Your basic info</legend>
          <label for="name">First Name:</label>
          <input type="text" name="fname">

          <label for="name">Last Name:</label>
          <input type="text" name="lname">

          <label for="mail">Email:</label>
          <input type="email" name="email">
          
          <label for="Mob-num">Mobile Number:</label>
          <input type="text" maxlength="10" name="mobile">

          <label>Gender:</label><br/>
          <input type="radio"  name ="gender" value="male">
          <label class="light">MALE</label>
          <br>
          <input type="radio" name ="gender" value="female">
          <label class="light">FEMALE</label>
          <br>
          <br/>
          <legend>
            <span class="number">2</span>Advanced Details</legend>
          
          <label for="name">User Name:</label>
          <input type="text" name="uname">

          <label for="password">Password:</label>
          <input type="password" name="pass">

        </fieldset>
                <fieldset>
        <legend>
            <span class="number">3</span>Your Role in IRCTC</legend>
          
          <label for="name">Work @ Station:</label>
          <input type="text" name="station">

          <label for="password">Post:</label>
          <input type="password" name="post">
        
        </fieldset>
        <fieldset>
          <label>Your State</label>
          <select name="userstate">
            <optgroup label="State">
              <option>Andhra Pradesh</option>
              <option>Arunachal Pradesh</option>
              <option>Assam</option>
              <option>Bihar</option>
              <option>Chhatishgarh</option>
              <option>Goa</option>
              <option>Gujarat</option>
              <option>Haryana</option>
              <option>Himacahal Pradesh</option>
              <option>Jammu and Kashmir</option>
              <option>Jharkhand</option>
              <option>Karnataka</option>
              <option>Kerala</option>
              <option>Madhya Pradesh</option>
              <option>Maharashtra</option>
              <option>Manipur</option>
              <option>Meghalaya</option>
              <option>Mizoram</option>
              <option>Nagaland</option>
              <option>Odisha</option>
              <option>Punjab</option>
              <option>Rajasthan</option>
              <option>Sikkim</option>
              <option>Tamil Nadu</option>
              <option>Telangana</option>
              <option>Tripura</option>
              <option>Uttar Pradesh</option>
              <option>Uttarakand</option>
              <option>West Bengal</option>
            </optgroup>
            <optgroup label="Union Territory">
                <option>Andaman and Nicobar Islands</option>
                <option>Chandigarh</option>
                <option>Dadra and Nagar Haveli</option>
                <option>Daman and Diu</option>
                <option>Delhi</option>
                <option>Lakshwadeep</option>
                <option>Pondicherry</option>
                
            </optgroup>
          </select>
        </fieldset>
        <br/><br/>
        <button type="submit">Register</button>
      </form>
  </div>

  </body>

</html>