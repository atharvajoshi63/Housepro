<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*"%>
<%@ page session="true" %>

<html><head>
<link rel="stylesheet" type="text/css" href="viewcart.css">
</head>
<body background="list.png">

<%
try
{//	out.println("hello");

	Statement st=null;
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost/housepro","root","");
	st=con.createStatement();
//	out.println("hi");
	%>
	
              <table>
		<tr>
		<td><img src="list.png" align="left" width=100 height=100>
		</td><td align="right" width=70% >
		<h1><center><b><i>SERVICE LIST</i></b></center></h1></td>
<td align="right" width=30%>
</td></tr></table>
		
<center>

		<table border=1 width=60% bgcolor="#fff">
		<tr>
		<th width=33% >Code</th><th width=33%>Name</th><th width=34%>Price</th><th width=33%></th></tr>
		<%

		Enumeration info = session.getAttributeNames();

	while(info.hasMoreElements())

	{
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
			
			String code=rs1.getString(2);
			String name=rs1.getString(3);
			float price=rs1.getFloat(5);
			%>
				<tr>
				<td width=33% align=center><%= code%></td>
				<td width=33% align=center><%= name%></td>
				<td width=34% align=center><%= price%></td>
				<td width=33%>
		<%
			String partLink="viewcart.jsp";
			String deleteLink=partLink + "?action=delete&deletedItem="+Name;
			session.removeAttribute(name);
		%>
		
		<a href="<%=deleteLink%>"><font color="blue">Delete</font></a></td>
				</tr>




				<%      }
		}
		}
	}

	%>

		</table></center>
<br>
<table><tr><td width="15%"align=right>
	<center><a href="tabs.jsp"><font size="4" color=darkmagenta"><b>Continue for select service</b></font></a></td><td width="15%" align="center">
	<a href="pement.jsp"><font size="4" color=darkmagenta"><b>Confirm</b></font></a></center></td></tr></table>

		<%
String action=request.getParameter("action");
if((action!=null) && (action.equals("delete")))
{
String deletedItem=request.getParameter("deletedItem");
session.removeAttribute(deletedItem);
}
%>

<br><br><br><br><br><br><br><br><br><br>
<%
}
catch(Exception e)
{
	out.println(e);
}
%>
