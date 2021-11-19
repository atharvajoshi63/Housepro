<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Registration for employee</title>
<link rel="stylesheet" type="text/css" href="addservice.css">
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
<h2>Add Service To HousePro</h2>
<form action="saveaddservice.jsp" method="post">
<h3>Choose Available Category-</h3>
<br>
<div class="box1">
<select name="category">
<option>Electrical Services</option>
<option>Plumbing Services</option>
<option>Carpenting Services</option>
<option>Cleaning Services</option>
<option>Pest Controlling</option>
</select>
</div> </br></br>
<div>
<input type="text" name="sname" pattern="[A-Za-z ]{1,32}" title="Please enter a valid Service Name!" required="">
<label>Service Name</label>
</div>
<div>
<div>
<input type="file" name="simage" title="Atleast 3 images of service!" required="">
<p>Service Images</p>
</div>
<div>
<input type="number" name="charge" pattern="[0-9]" title="Fixed rates for Services" required="">
<label>Charges</label>
</div>
<div>
<input type="Text" name="sdec" title="Please enter short decription." required="">
<label>Decription</label>
</div>

<input type="submit" name="submit" value="Add">
</form>
</div>
</div>

<div class="side-menu">
<ul class="nav-area">
		<li class="active"><a href="addservice.jsp">Add Services</a>
			
		</li>
		
		<li><a href="addcategory.jsp">Add Category</a>
			
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

</body>
</html>
</body>
</html>