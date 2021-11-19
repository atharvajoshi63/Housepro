
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Services</title>
    <link href="https://unpkg.com/ionicons@4.5.10-0/dist/css/ionicons.min.css" rel="stylesheet">
 <link rel="stylesheet" type="text/css" href="tabs.css">
</head>
<body>


	<nav>
		<h2>SELECT THE AVAILABLE SERVICES ON OFFER</h2>
			<ul>
				<li class="cart">
					<a href="viewcart1.jsp">
					<ion-icon name="list"></ion-icon>List<span>0</span>
					</a>
				</li> 
			</ul>
	</nav>
	 <div class="container">
	<%
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/housepro","root","");
		Statement st =con.createStatement();
ResultSet rs=st.executeQuery("select * from addservice where category='Carpenting Services'");
while(rs.next())
{
	%>
	
	<div class="image">
	
            <img src="<%=rs.getString(4) %>" alt="ACcooler">
            <h3><%=rs.getString(3) %></h3>
            <h3>Starting at <%=rs.getString(5) %>/-</h3>
            <a class="add-cart cart1" href="add5cart5.jsp?id1=<%=rs.getInt(1)%>">Add to List</a>
        </div>
	
	<%	
}
		
	}
	catch(Exception e)
	{
		out.println(e);
	}
	
	
	%>
    
    
        
        
        
    </div>
    <script src="https://unpkg.com/ionicons@4.5.10-0/dist/ionicons.js"></script>
    <script src="cartmain.js"></script>
</body>
</html>