<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration for employee</title>
<link rel="stylesheet" type="text/css" href="professionalstyle.css">
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
            <ul>
            <li><a href="header1.jsp">Home</a></li>
                <li><a href="mainframe.jsp">Services</a></li>
               
                <li><a href="aboutus.jsp">About Us</a></li>
                <li class="active"><a href="Worker.jsp">Become a Professional</a></li>
            </ul>
             <div class="signup">
            <a href="signup1.jsp">Login/Sign Up</a>
            </div>
            
            </div>
        </header>
<div class="box">
<h2>Become A Professional</h2>
<form action="saveprofession.jsp" method="post">
<div>
<input type="text" name="fname" pattern="[A-Za-z ]{1,32}" title="Please enter a valid first name!" required="">
<label>First Name</label>
</div>
<div>
<input type="text" name="lname" pattern="[A-Za-z ]{1,32}" title="Please enter a valid last name!" required="">
<label>Last Name</label>
</div>
<div>
<input type="text" name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" title="E.g, abc123@gmail.com" required="">
<label>Email</label>
</div>
<div>
<input type="number" name="phoneno" pattern="[789][0-9]{9}" title="Please enter a valid phone no!" required="">
<label>Phone No</label>
</div>
<div>
<input type="text" name="address" title="Address must have flat no, building, area name, area code, city, etc." required="">
<label>Address</label>
</div>
<div>
<input type="number" name="adharno" pattern="[0-12]{12}" title="Please enter a valid Adhar no!" required="">
<label>Aadhar No</label>
</div>
<h3>Gender</h3>
<br>
<div class="box1">
<select name="gender">
<option>Male</option>
<option>Female</option>
</select>
</div>
<br>
<h3>Choose Your Profession</h3>
<br>
<div class="box1">
<select name="specialization">
<option>Electrician</option>
<option>Plumber</option>
<option>Carpenters</option>
<option>Cleaning Experts</option>
<option>Pest Control</option>
</select>
</div>
<br>
<br>
<h3>Qualifications</h3>
<br>
<br>
<div>
<input type="text" name="qual1" pattern="[0-9]+([\.][0-9]{0,2})?" title="Please enter a valid percentile!" required="">
<label>10th marks</label>
</div>
<div>
<input type="text" name="qual2" pattern="[0-9]+([\.][0-9]{0,2})?" title="Please enter a valid percentile!" required="">
<label>12th/Diploma</label>
</div>
<div>
<input type="text" name="qual3" pattern="[A-Za-z ]{1,32}" title="Please enter a valid Course Name!" required="">
<label>Graduation details</label>
</div>
<div>
<input type="text" name="specialization" pattern="[A-Za-z ]{1,32}" title="Please enter a valid information!" required="">
<label>Specialization</label>
</div>

<input type="submit" name="submit" value="Submit">


</form>
</div>

<div class="footer">
         <div class="footer-content">  
          
	        <ul> 
	             <li><a href="#">Terms and condition</a></li>
	            
	             <li><a href="#">contact us</a></li>
	            
	             <li><a href="#">careers</a></li>
	            
	            <li><a href="#">about us</a></li>
	        </ul>
       </div>
            <div class="left"> 
                <label>serving in pune</label>
        
         </div>
        <div class= "footer-bottom">     
           &copy;2020 |Designed by housepro
         </div>
    </div>

</body>
</html>