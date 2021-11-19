<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Registration for employee</title>
<link rel="stylesheet" type="text/css" href="addcategory.css">
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
            <li><a href="adminhome.jsp">Home</a></li>
                <li class="active"><a href="manageservice.jsp">Manage Services</a></li>
                <li><a href="#">Professional Field</a></li>
                <li><a href="#">Customer Details</a></li>
                <li><a href="#">Customer Reviews</a></li>
            </ul>
             <div class="signup">
            <a href="header1.jsp">Logout</a>
            </div>
            </div>
		</header>
		
<div class="box">
<h2>Add New Category To HousePro</h2>
<form action="#" method="post">
<div>
<input type="number" name="sid" title="Please enter a valid phone no!" required="">
<label>Category ID</label>
</div>
<div>
<input type="text" name="sname" pattern="[A-Za-z ]{1,32}" title="Please enter a valid Service Name!" required="">
<label>Category Name</label>
</div>
<div>

<input type="text" name="dname" title="Enter Department name" required="">
<label>Department Name</label>
</div>
<div>
<input type="text" name="dhead" pattern="[A-Za-z ]{1,32}" title="Designated Head Of Department" required="">
<label>Department Head</label>
</div>


<input type="submit" name="submit" value="Add">
</form>
</div>


<div class="side-menu">
<ul class="nav-area">
		<li><a href="addservice.jsp">Add Services</a>
			
		</li>
		
		<li class="active"><a href="addcategory.jsp">Add Category</a>
			
		</li>
		
		<li><a href="#">View Services</a>
			<div class="sub-nav">
				<div class="sub-menu">
					<h3>Sub Categories</h3>
					<ul>
						<li><a href="#">Full Home Deep Clean</a></li></br>
						<li><a href="#">Sofa Cleaning</a></li></br>
						<li><a href="#">Doors And Windows</a></li></br>
						<li><a href="#">Laundry Services</a></li></br>
						<li><a href="#">Other Cleaning and Polishing</a></li>
					</ul>
				</div>
			</div>
		</li>
		
		<li><a href="#">View Categories</a>
			<div class="sub-nav">
				<div class="sub-menu">
					<h3>Sub Categories</h3>
					<ul>
						<li><a href="#">All In One Solution</a></li></br>
						<li><a href="#">Eco Friendly Technologies</a></li></br>
						<li><a href="#">Deep Home Inspection</a></li></br>
						<li><a href="#">Quick Solutions</a></li></br>
						<li><a href="#">Other Cleaning and Polishing</a></li>
					</ul>
				</div>
			</div>
		</li>
		
		<li><a href="#">Service Details</a>
			<div class="sub-nav">
				<div class="sub-menu">
					<h3>Sub Categories</h3>
					<ul>
						<li><a href="#">New Designs New Creations</a></li></br>
						<li><a href="#">Repair And Fixes</a></li></br>
						<li><a href="#">Polish And Clean Furniture</a></li></br>
						<li><a href="#">Movable Furniture</a></li>
					</ul>
				</div>
			</div>
		</li>
	</ul>
</div>


</body>
</html>

