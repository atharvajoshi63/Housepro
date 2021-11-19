
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
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/housepro", "root", "");
			Statement st = con.createStatement();
			Statement st2 = con.createStatement();
			String status = "c";
			String btn = request.getParameter("signup-button");
			if (btn.equals("SignUp")) {
				String nm = request.getParameter("name");
				String uname = request.getParameter("username");
				String mail = request.getParameter("email");
				String pw = request.getParameter("password");
				String phno = request.getParameter("phoneno");
				//String addr = request.getParameter("address");
				String fhfb = request.getParameter("FHFB");
				String csl = request.getParameter("CSL");
				//String lndmrk = request.getParameter("landmark");
				String ct = request.getParameter("city");
				String pin = request.getParameter("pincode");
				String rajya = request.getParameter("state");
				int i = st2.executeUpdate("insert into login(username, password,status) values('" + uname + "','"
						+ pw + "','" + status + "')");
				int j = st.executeUpdate(
						"insert into signup1(name, username, email, password, phoneno, FHFB, CSL, city, pin, state) values('" + nm + "','" + uname + "','" + mail + "','" + pw + "','" + phno + "','" + fhfb + "','" + csl + "','" + ct + "','"+ pin + "','" + rajya + "')");
				if (i > 0 && j > 0)
	%>
	<br><br>
	<center>
	<img src="right.jpg" height="15%" width="15%"><br>
	<b><font color="green">You have registered successfully!!!</br></font></b>
	</center>
	</br>
	</br>

	<center>
		<a href="signup1.jsp" target="f3"><strong>Next</strong></a>
	</center><br>
	<center>
		<a href="header1.jsp"><strong>Cancel!</strong></a>
	</center>

	


	<%
		} else {

		String s1 = request.getParameter("username");
		String s2 = request.getParameter("password");
		session.setAttribute("s1", s1);
		session.setAttribute("s2", s2);
		String stat = "";
		ResultSet rs;
		ResultSet rs1;
		//rs = st.executeQuery("select * from login where username='" + s1 + "' and password='" + s2 + "'");
		rs1 = st.executeQuery("select * from login where username='" + s1 + "' and password='" + s2 + "'");
		//if
		int cnt = 0;
		if (rs1.next())
			cnt = rs1.getInt(1);
		rs1.close();
		if (cnt == 0){
			out.println("<center><img src='sad.png' width='15%' height='15%'><br></center>");
		out.println("<center><br><b><i><font color=red>Sorry!<br>Invalid username or password.</fonr></i></b></center>");
		%><center><br><br>
		<b><font color="green"><a href="signup1.jsp"><strong>Try Again</strong></a></font></b>
	</center><%
		}
		else {
			rs = st.executeQuery("select * from login where username='" + s1 + "' and password='" + s2 + "'");
			
			
			while (rs.next()) {

				stat = rs.getString("status");
			}
			if (stat.equals("s")) {
				response.sendRedirect("a.jsp");
			} 
			else if (stat.equals("a")) 
			{
				//response.sendRedirect("adminhome.jsp");
				%><br><br>
				<center>
				<img src="right.jpg" height="15%" width="15%"><br>
				<b><font color="green">You have Logged In successfully!!!</br></font></b>
				</center>
				</br>
				</br>

				<center>
					<a href="adminhome.jsp"><strong>Next</strong></a>
				</center><br>
				<center>
					<a href="header1.jsp"><strong>Cancel!</strong></a>
				</center>


				<%
			}

					else if (stat.equals("c")) {
	%><br><br>
	<center>
	<img src="right.jpg" height="15%" width="15%"><br>
	<b><font color="green">You have Logged In successfully!!!</br></font></b>
	</center>
	</br>
	</br>

	<center>
		<a href="header2.jsp"><strong>Next</strong></a>
	</center><br>
	<center>
		<a href="header1.jsp"><strong>Cancel!</strong></a>
	</center>


	<%
		}

				}
			}
	%>


	<%
		st.close();
			st2.close();

		} catch (SQLException e1) {
			out.println(e1);
		} catch (Exception e) {
			out.println(e);
		}
	%>

</body>


</body>
</html>