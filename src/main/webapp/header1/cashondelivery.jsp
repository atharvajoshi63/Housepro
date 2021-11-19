<%@page import="java.sql.*"%>

<%@page import="java.util.Date"%>
<%@ page import="java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>
<%@page import="java.text.SimpleDateFormat"%>
<html>

<head>
<style>
body {
  background-image: url('white.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;
}

</style>

<%@ page import="java.util.Date.*"%>

<form method="post" action="invoice.jsp">

<center>

<%
String fname=null,fhfb=null,csl=null,ct=null,pin=null,rajya=null,email=null,state=null,ph=null;
try
{
Statement st=null;
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/HousePro","root","");

String s1=(String)session.getAttribute("s1");
String s2=(String)session.getAttribute("s2");

 st=con.createStatement();
String sql="select * from signup where username='"+s1+"' and password='"+s2+"'";
ResultSet rs=st.executeQuery(sql);
while(rs.next())
{
fname=rs.getString(2);
fhfb=rs.getString(7);
csl=rs.getString(8);
//lndmrk=rs.getString(9);
ct=rs.getString(9);
pin=rs.getString(10);
rajya=rs.getString(11);
email=rs.getString(5);
ph=rs.getString(6);

}


}
catch(Exception e){}

%>

<div align="center">
 
 <table width="42%" border="0">
  
  
<tr bordercolor="">
     
 <td>
        
<h6 align="center">
<b><font size="7">
 <font face="Arial, Helvetica, sans-serif">Verify Details</font>
</font></b></h6>
    
  </td>
    
</tr>
 
 </table>


</div>
</center>


<center>
 <div align="center">
   
 <table width="64%" border="2" hspace="30" bordercolor="#660066" align="center">


<div align="center">
  
<table width="33%" border="0" hspace="30" height="48">

    <tr>
     
 <td width="72%">
       
 <div align="center">Date : -</div>					
      
</td>
     
 <td width="28%">
  <%
  
  Date dNow = new Date( );
  SimpleDateFormat ft = new SimpleDateFormat ("yyyy.MM.dd ");
  
    %>   
   <input type="text" name="cdate" value=<%=ft.format(dNow) %>>
  
    </td>
    </tr>
  
</table>


<div align="center">

<table width="64%" border="2" hspace="30" height="32" bordercolor="#660066">
       
 <tr>
          
<td width="41%">
           
 <div align="center"></div>
         
 </td>
         
 <td width="59%">
          
</td>
        
</tr>



 <tr>
          
<td width="41%">
        
    <div align="center"><b>Full Name</b></div>
 
</td>
         
 <td width="59%">
             
 <input type="text" name="Fname" size="25" maxlength="25" value="<%= fname%>">
         
 </td>
        
</tr>
        
<tr>
          
<td width="41%">
                
  </td>
        
  <td width="59%">
                
   </td>
       
 </tr>
     

<tr>
        
<td width="40%">
           
 <div align="center"><b>Flat/House No/Floor/Building</b></div>
      
  </td>
        
<td width="60%">
            
<div align="left"><b>
              
<input type="text" name="fhfb" size="30" maxlength="30" value=<%= fhfb%>>
              
</b> </div>
        
</td>
      
</tr>

<tr>
        
<td width="40%">
           
 <div align="center"><b>Colony/Street/Locality/Landmark</b></div>
      
  </td>
        
<td width="60%">
            
<div align="left"><b>
              
<input type="text" name="csl" size="30" maxlength="30" value=<%=csl %>>
              
</b> </div>
        
</td>
      
</tr>       



<tr>
        
<td width="40%">
           
 <div align="center"><b>City</b></div>
      
  </td>
        
<td width="60%">
            
<div align="left"><b>
              
<input type="text" name="cct" size="30" maxlength="30" value=<%=ct %>>
              
</b> </div>
        
</td>
      
</tr>

<tr>
          
<td width="41%">
          
  <div align="center"><b>PinCode</b></div>
       
   </td>
         

 <td width="59%">
           
 <input type="text" name="cpin" size="30" maxlength="30" value=<%=pin %>>
         
 </td>
      
  </tr>
        
        <tr>
        
<td width="40%">
           
 <div align="center"><b>State</b></div>
      
  </td>
        
<td width="60%">
            
<div align="left"><b>
              
<input type="text" name="cstate" size="30" maxlength="30" value=<%=rajya %>>
              
</b> </div>
        
</td>
      
</tr>
        
<tr>
          
<td width="41%">
          
  <div align="center"><b>Email</b></div>
       
   </td>
         

 <td width="59%">
           
 <input type="text" name="email1" size="30" maxlength="30" value=<%=email %>>
         
 </td>
      
  </tr>

     



<tr>
          
<td width="41%">
           

 <div align="center"><b>Mobile No</b></div>
         
 </td>
         
 <td width="59%">
              
<input type="text" name="mobno" size="25" maxlength="25" value=<%=ph %>>
       
   </td>
        
</tr>
      
 



<tr>
          
<td width="41%">
                
  </td>
        
  <td width="59%">
                
   </td>
       
 </tr>
     
 </table>
      
</div>
      
<p>&nbsp;</p>
      
<table width="66%" border="0" bordercolor="#660066">
       
 <tr>
            
<td width="50%">
            
  <div align="right">
             
 <input type="submit" name="Button" value="Submit">
            
</div>
          
</td>
            
<td width="26%">
              
<div align="right">
              
<input type="reset" value="Reset"> 
</div>
         
 </td>
            
<td width="24%">
             
 <div align="right"> 
</div>
          
</td>
       
 </tr>
      
</table>
      
<p>&nbsp;</p>
    
</div>
    
<p>&nbsp;</p>
  
</div>
</div>


<a href="viewcart.jsp">
<b><font color="blue" size=10>Back</font></b>
</center>
<br>
</html>


</center>

</form>



</body>


</html>
