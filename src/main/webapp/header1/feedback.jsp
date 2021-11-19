<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Registration for employee</title>
<link rel="stylesheet" type="text/css" href="feedback.css">
<link rel="stylesheet" type="text/css" href="https://use.fontawesome.com/6613411310.js">

</head>
<body class="bg-image">
  <header>
        <div class="main">
            <div class="logo">
            <img src="home.png">
            </div>
            <div class="name">
            <h2>HousePro</h2>
            </div>
            <ul id="hm">
            <li><a href="header1.jsp">Home</a></li>
                <li><a href="mainframe.jsp">Services</a></li>
                <li><a href="aboutus.jsp">About Us</a></li>
                <li class="active"><a href="feedback.jsp">Feedback</a></li>
                <li><a href="Worker.jsp">Become a Professional</a></li>
            </ul>
             <div class="signup">
            <a href="signup.jsp">Login/Sign Up</a>
            </div>
           
            </div>
     
            
        </header>
		
<div class="box">
<h2>feedback for HousePro</h2>
<form action="savefeedback.jsp" method="post">

<div>
<input type="text" name="fname" pattern="[A-Za-z ]{1,32}" title="Please enter a valid Service Name!" required="">
<label>full Name</label>
</div>
<div>
<input type="number" name="phno" pattern="[789][0-9]{9}" title="please enter phone number" required="">
<label>phone number</label>
</div>
<h3>feedback for which service-</h3>
<br>
<div class="box1">
<select name="category">
<option>Electrical Services</option>
<option>Plumbing</option>
<option>Carpenting</option>
<option>Cleaning</option>
<option>Pest Controlling</option>
</select>
</div> </br></br>
<div>
<input type="text" name="feedback"  title="please give feedback description" required="">
<label>Feedback</label>
</div>
<div>
<h3>Rating-</h3>
<br>
<div class="box1">
<select name="rating" >
<option>1.Poor</option>
<option>2.Average</option>
<option>3.Good</option>
<option>4.Excellent</option>
<option>5.superior</option>
</div>
</div>
<br>
<br><br><input type="submit" name="submit" value="Submit">
</form>

</body>
</html>