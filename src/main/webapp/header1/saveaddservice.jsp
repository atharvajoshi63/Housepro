<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>addservice</title>
</head>
<body>
<% 
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/housepro","root","");
	Statement st =con.createStatement();
	
	String ctg=request.getParameter("category");
	String snm =request.getParameter("sname");
	String simg=request.getParameter("simage");
	String cg=request.getParameter("charge");
	String sde=request.getParameter("sdec");
    int j=st.executeUpdate("insert into addservice(category, sname, simage, charge, sdec) values('"+ctg+"','"+snm+"','"+simg+"','"+cg+"','"+sde+"')");
	if(j>0)
		%>
		<font color="grey">You have Added successfully!!!</br>
</font>
<a href="adminhome.jsp"><strong>Go forward</strong></a>

		
		

<%
st.close();


}
catch(SQLException e1)
{
	out.println(e1);
}
catch(Exception e)
{
	out.println(e);
}
%>

</body>


</body>
</html>