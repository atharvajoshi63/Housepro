<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Feedback</title>
</head>
<body>
<% 
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/housepro","root","");
	Statement st =con.createStatement();
    String nm=request.getParameter("fname");
	String ph =request.getParameter("phno");
	String cat=request.getParameter("category");
	String fd=request.getParameter("feedback");
	String rat=request.getParameter("rating");
    int j=st.executeUpdate("insert into feedback(fname, phno, category, feedback, rating) values('"+nm+"','"+ph+"','"+cat+"','"+fd+"','"+rat+"')");
	if(j>0)
		%>
			<font color="grey">You have Added successfully!!!</br>
</font>
<a href="header1.jsp"><strong>Go forward</strong></a>
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