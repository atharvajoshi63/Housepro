<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.*"%>
<%@ page session="true" %>
<html>
<style>
body {
  background-image: url('white.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;
}
</style>



<%

int bno=0,bno1=0;
String	f_name="",l_name="";
String s1,s2,s3,s4,s5,s6,s7,s8,s9;
float total=0;
String date2=request.getParameter("cdate");
try
{
	Statement st=null;
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost/HousePro","root","");
	st=con.createStatement();



%>
	
		<html><center><head>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


		<html>
		<body>    
		<font color="blue" size=4><h2>BILL</h2></font>
		
 <br>    <b><i>Bill No : </i></b>

<% 

 String sql1="select * from bill";
      
ResultSet rs2=st.executeQuery(sql1);
	while(rs2.next())
	{

	 bno=rs2.getInt(1);		
	 bno1=bno+1;

	}











%>
			<b><i> <%=bno1+1 %> </i></b>  

		<table cellpadding=6  Border='0'  bordercolor=black>    

		<font face=Arial size=7  >    

		<tr ><td ><b>Customer Name:</b>   </td>
<% Enumeration info = session.getAttributeNames();

                        while(info.hasMoreElements())

                        {

                                String Name = (String)info.nextElement();
if(Name.equals("s1"))
{
                                String Value = (String)session.getAttribute(Name);
			
	String sql="select * from signup where username='"+Value+"'";
	ResultSet rs=st.executeQuery(sql);
	while(rs.next())
	{
	        f_name=rs.getString(2);
		
	
%>

<td><b><%=f_name%> </b></td></tr> <%

}}} %>  

		<b><tr align=center><th></th></tr></b></font>    

		<b><tr align=center><th></th></tr></b></font>    

		</table>    



		<table border='1' width='90%' >    

		<tr  align=center>    

		<td><b><font size+=1>    

		Service No.    

		</font></b></td>    

		<td><b><font size+=1>    

		Service Category    

		</font></b></td>    

		<td><b><font size+=1>    

		Service  

		</font></b></td>    

		<td><b><font size+=1>    

		Rates for Services    

		</font></b></td>

		<%
		int cnt=0,cnt1=0;
	
	 info = session.getAttributeNames();

	while(info.hasMoreElements())

	{
		String Name = (String)info.nextElement();
		if(!Name.equals("s1"))
		{
			if(!Name.equals("s2"))
			{
		
		String Value = (String)session.getAttribute(Name);
		String sql="select * from addservice where id="+Value+"";
		ResultSet rs1=st.executeQuery(sql);

		while(rs1.next())
		{
			cnt1++;
			cnt++;
			String code=rs1.getString(2);
			String name=rs1.getString(3);
			float price=rs1.getFloat(5);
			total=total+price+(79*cnt1);
			%>


				<tr><td width=20% align=center><%=cnt+"."%></td>
				<td width=20% align=center><%= code%></td>
				<td width=20% align=center><%= name%></td>
				<td width=20% align=center><%="Rs."+ price%></td>
				<%
     

		}
			}
		}
	}%>              
	
	<table cellpadding=6  Border='0'  >    



	<b><tr align= center><th></th></tr></b></font>    

		<tr>
		<td> </td>
		<tr align=right><td><b>TOTAL:</b></td><td bgcolor="white"><b><%="Rs."+total%></b></td>
		</tr>
		</font></table>
 
		</body></html>
<h1><br><center><font size=4 color="black"><b><blink>THANK YOU!!!!!</blink></b></font></center>


	<%
String s=f_name;
out.println(s);
Statement st1=null;
st1=con.createStatement();
int i=st1.executeUpdate("insert into bill values("+bno1+",'"+s+"',"+total+",'"+date2+"')");





}

catch(Exception e)
{
	System.out.println(e);
}

%>
<br><br>
<center><a href="feedback.jsp"><label>Give Feedback</label></a></center>