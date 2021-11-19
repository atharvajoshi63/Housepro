<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
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
	Statement st2 =con.createStatement();
	String status="c";
	String btn=request.getParameter("signup-button");
	if(btn.equals("SignUp"))
	{
	String nm=request.getParameter("name");
	String uname=request.getParameter("username");
	String mail=request.getParameter("email");
	String pw=request.getParameter("password");
	String phno=request.getParameter("phoneno");
	String addr=request.getParameter("address");
	String pin=request.getParameter("pincode");
	int i=st2.executeUpdate("insert into login(username, password,status) values('"+uname+"','"+pw+"','"+status+"')");
int j=st.executeUpdate("insert into signup(name, username, password, email, phoneno, address, pin) values('"+nm+"','"+uname+"','"+pw+"','"+mail+"','"+phno+"','"+addr+"','"+pin+"')");
	if(i>0 && j>0)
		%>
		<center></center><font color="grey">You have registered successfully!!!</br></font></center>

<center><a href="header1.jsp"><strong>Go Forward</strong></a></center>

		
		<% 
		
	}
	else
	{
		String s1=request.getParameter("username");
		String s2=request.getParameter("password");
		session.setAttribute("s1",s1);
		session.setAttribute("s2",s2);
		String stat="";
		ResultSet rs;
		rs = st.executeQuery("select * from login where username='"+s1+"' and password='"+s2+"'");
		while(rs.next())
		{
			stat = rs.getString("status");
		}
		if(stat.equals("s"))
		{
			response.sendRedirect("a.jsp");
		}
		else if(stat.equals("a"))
		{
			response.sendRedirect("adminhome.jsp");
		}
		
		else
		{
		response.sendRedirect("header1.jsp");
		}
	}
%>


<%
st.close();
st2.close();

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