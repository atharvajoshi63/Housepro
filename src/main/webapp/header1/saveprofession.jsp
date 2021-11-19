<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/housepro","root","");
	Statement st =con.createStatement();
	
	String fnm=request.getParameter("fname");
	String lnm=request.getParameter("lname");
	String mail=request.getParameter("email");
	String phno=request.getParameter("phoneno");
	String addr=request.getParameter("address");
	String adno=request.getParameter("adharno");
	String gend=request.getParameter("gender");
	String q1=request.getParameter("qual1");
	String q2=request.getParameter("qual2");
	String q3=request.getParameter("qual3");
	String sp=request.getParameter("specialization");
	int j=st.executeUpdate("insert into profession(fname, lname, email, phoneno, address, adharno, gender, 10th, 12th, graduation, specialization) values('"+fnm+"','"+lnm+"','"+mail+"','"+phno+"','"+addr+"','"+adno+"','"+gend+"','"+q1+"','"+q2+"','"+q3+"','"+sp+"')");
	if(j>0)
		%>
		<font color="grey">You have registered successfully!!!</br>
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