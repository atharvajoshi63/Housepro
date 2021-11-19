<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>feedback details</title>
<link rel="stylesheet" type="text/css" href="feedbackreport.css">
<link rel="stylesheet" type="text/css" href="https://use.fontaweso`me.com/6613411310.js">

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
                <li ><a href="manageservice.jsp">Manage Services</a></li>
                <li><a href="professionalfield.jsp">Professional Field</a></li>
                 <li><a href="signupreport.jsp">Customer Details</a></li>
                  <li class="active"><a href="feedbackreport.jsp">Customer Reviews</a></li>
            <li><a href="billreport.jsp">Bill Details</a><li>
          
           <li> <a href="header1.jsp">Logout</a></li>
              </ul>
            </div>
            
              
		</header>
	<div class="table">
		<table border="1"> 
			<tr>
					<th>ID</th>
					<th>Name</th>
					<th>Phone No</th>
					<th>category</th>
					<th>Feedback</th>
					<th>Rating</th>
			</tr>
				
<% 
try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/housepro","root","");
Statement st=con.createStatement();
PreparedStatement ps=con.prepareStatement("Select * from feedback");

ResultSet rs=ps.executeQuery();
%><label>Feedback Of User</label><% 
while(rs.next()){
				%>
				<tr>
					<td><%= rs.getString(1) %></td>
					<td><%= rs.getString(2) %></td>
					<td><%= rs.getString(3) %></td>
					<td><%= rs.getString(4) %></td>
					<td><%= rs.getString(5) %></td>
					<td><%= rs.getString(6) %></td>
					
				</tr>
				
				<%
				}
	}
catch(SQLException e){
e.printStackTrace();
}
%>
</table> 
</div>
</body>
</html>