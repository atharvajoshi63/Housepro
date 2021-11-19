<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*"%>
<%@ page session="true" %>

<html><head>
 <link href="https://unpkg.com/ionicons@4.5.10-0/dist/css/ionicons.min.css" rel="stylesheet">
<script src="https://unpkg.com/ionicons@5.0.0/dist/ionicons.js"></script>
<link rel="stylesheet" type="text/css" href="viewcart1.css">
</head>
<body background="list.png">
<br><br><br>
<img src="list.png" align="left" width=100 height=100>
<div class="service-list"><h2>Service List</h2></div>
<%
try
{//	out.println("hello");

	Statement st=null;
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost/housepro","root","");
	st=con.createStatement();
//	out.println("hi");
	%>
	<div class="service-container">
	<div class="service-header">
		<h5 class="service-category">Service Category</h5>
		<h5 class="service-title">Service</h5>
		<h5 class="service-rate">Rate(t&c*)</h5>
		<h5 class="service-remove">Remove</h5>
		</div>
		<div class="services">
		
		<div class="service">
		<%

		Enumeration info = session.getAttributeNames();
		
	while(info.hasMoreElements())

	{	
	%><div class="disp"><%
		
		String Name = (String)info.nextElement();
		if(!(Name.equals("s1")))
		{
			if(!(Name.equals("s2")))
			{
		String Value = (String)session.getAttribute(Name);
			String sql="select * from addservice where id="+Value+"";
		

		ResultSet rs1=st.executeQuery(sql);

		while(rs1.next())
		{
			String img=rs1.getString(4);
			String code=rs1.getString(2);
			String name=rs1.getString(3);
			float price=rs1.getFloat(5);
			%>
			
			
			<label><img src="<%= img%>"></label>
			<label><%= code%></label>
			<label><%= name%></label>
			<label><%= price%></label>
			<label>
			
				
				<%
			String partLink="viewcart1.jsp";
			String deleteLink=partLink + "?action=delete&deletedItem="+Name;
			session.removeAttribute(name);
		%>
				<a href="<%=deleteLink%>"><ion-icon name="close-circle-outline"></ion-icon></a></label>
				</div>
			
	<%			}
			}
		}
	}
	%>
	</div>
		</div>
	</div>
<div class="main">
<ul id="hm">
            <li><a href="tabs.jsp">Continue For Select Services</a></li>
                <li><a href="payment.jsp">Confirm</a></li>
               
            </ul>
</div>

<!--<ul>
	<li><a href="tabs.jsp"><font size="4" color=darkmagenta"><b>Continue for select service</b></font></a></td><td width="15%" align="center"></li>
	<li><a href="pement.jsp"><font size="4" color=darkmagenta"><b>Confirm</b></font></a></center></td></tr></li>
	</ul>-->
	
	
	<%
String action=request.getParameter("action");
if((action!=null) && (action.equals("delete")))
{
String deletedItem=request.getParameter("deletedItem");
session.removeAttribute(deletedItem);
}
%>
<br><br><br><br><br><br><br><br><br>
	
	<%
	}
	catch(Exception e)
	{
		out.println(e);
	}
	%>
  </body>
  </html>