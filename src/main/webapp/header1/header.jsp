 
 
 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Services</title>
 <link rel="stylesheet" type="text/css" href="servicetarget.css">
</head>
<body>
 <header>
        <div class="main">
            <div class="logo">
            <img src="home.png">
            </div>
            <div class="name">
            <h2>HousePro</h2>
            </div>
            <ul>
            <li><a href="header1.jsp" target="mainframe.jsp">Home</a></li>
                <li class="active"><a href="service.jsp">Services</a></li>
                
                <li><a href="aboutus.jsp" target="mainframe.jsp">About Us</a></li>
                <li><a href="Worker.jsp" target="mainframe.jsp">Become a Professional</a></li>
            </ul>
             <div class="signup">
            <a href="signup1.jsp" target="mainframe.jsp">Login/Sign Up</a>
            </div>
            <div class="cart">
            <a href="cart.jsp">
            <ion-icon name="basket"><ion-icon>
            </a>
            <div class="search_box">
                <input type="text" placeholder="Search for services">
                <div class="searchbtn" href="#">
                <a href="search.png"><i class="fas fa-search"></i></a>
                </div>
            </div>
            </div>
        </header>
		</body>
		</html>