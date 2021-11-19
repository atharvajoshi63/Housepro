<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.*"%>
<%@ page session="true" %>
<%@ page import="java.util.Date"%>
<%@ page import="java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>
<!DOCTYPE html>

<html lang="en">
  <head>
    <meta charset="utf-8"/>
    <title>Service Invoice</title>
    
 

    <link rel="stylesheet" href="invoice.css">
  </head>
  <body>
    <div id="container">
    
      <div class="left-stripes">
        <div class="circle c-upper"></div>
        <div class="circle c-lower"></div>
      </div>
<%

int bno=0,bno1=0;
String	f_name="",l_name="", fhfb="", csl="", lndmrk="", ct="", rajya="",mail="",phno="",pn="";
String s1,s2,s3,s4,s5,s6,s7,s8,s9;
double total=0;
String date2=request.getParameter("cdate");
try
{
	Statement st=null;
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost/HousePro","root","");
	st=con.createStatement();



%>
      <div class="right-invoice">
        <section id="memo">
          <div class="company-info">
            <div>HousePro</div>
            <br>
            <span>Mumbai-Pune Bypass Highway</span>
            <span>Pune-46, Maharashtra state</span>
            <br>
            <span>Cont. +91 8830096131</span>
            <br>
            <span>www.housepro.com</span>
          </div>

          <div class="logo">
            <img src="home.png">
              
          </div>
        </section>


        <section id="invoice-title-number">

          <div class="title-top">
          <% 

 String sql1="select * from bill";
      
ResultSet rs2=st.executeQuery(sql1);
	while(rs2.next())
	{

	 bno=rs2.getInt(1);		
	 bno1=bno+1;

	}

%>
            <span class="x-hidden">{issue_date_label}</span>
             <%
  
  Date dNow = new Date( );
  SimpleDateFormat ft = new SimpleDateFormat ("yyyy.MM.dd ");
  
    %>   
   <span><%=ft.format(dNow) %></span> <span id="number">#<%=bno1+1 %></span>
          </div>
        
          <div id="title">INVOICE</div>
          
        </section>



        <section id="client-info">
          <span>To</span>
               <%
          Enumeration info = session.getAttributeNames();

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
			fhfb=rs.getString(7);
			csl=rs.getString(8);
			//lndmrk=rs.getString(9);
			ct=rs.getString(9);
			pn=rs.getString(10);
			rajya=rs.getString(11);
			phno=rs.getString(6);
			mail=rs.getString(5);
			
		%>
          <div class="client-name">
            <span><%= f_name%></span>
          </div>
           
          
          <div>
            <span><%=fhfb%>, <%=csl%>,</span>
          </div>
          
         
          
          <div>
            <span><%=ct%> Pin: <%=pn%>,</span>
          </div>
          
          <div>
            <span><%=rajya%></span>
          </div>
          
          <div>
            <span><%=phno%></span>
          </div>
          
          <div>
            <span><%=mail%></span>
          </div>
         
           <%

}}} %>  
        </section>
        
        <div class="clearfix"></div>
        
        <section id="invoice-info">
          <div>
            <span>NET</span> <span>- 21</span>
          </div>
          <div>
          <%
  Calendar c=Calendar.getInstance();
         c.setTime(dNow);
         c.add(Calendar.DATE, 1);
         Date dNow1=c.getTime();
         
 // Date dNow1 = new Date( );
  SimpleDateFormat ft1 = new SimpleDateFormat ("yyyy.MM.dd ");
  
  
    %>   
   <font color="green"><span>SERVICE WILL HELD ON- <%=ft1.format(dNow1) %></span></font>
  
          </div>
          <div>
            <span>REF#-</span> <span>1/3-147</span>
          </div>
        </section>
       
        <div class="clearfix"></div>

        <div class="currency">
          <span>*All prices are in</span> <span>INR</span>
        </div>
        
        <section id="items">
          
          <table cellpadding="0" cellspacing="0">
          
            <tr>
              <th> </th> <!-- Dummy cell for the row number and row commands -->
              <th>Service Category</th>
              <th>Service</th>
              
            
              <th>Rates</th>
                 <th>  </th>
            
            <%
		int cnt=0;
            		  double cnt1=0;
	
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
			double price=rs1.getFloat(5);
			total=total+price+(cnt1 * 0.18);
			%>
            <tr data-iterate="item">
              <td><%= cnt%></td> <!-- Don't remove this column as it's needed for the row commands -->
              <td><%= code%></td>
              <td><%= name%></td>
              <td><%="&#8377;"+ price%></td>
                <%
     

		}
			}
		}
	}%>          
          
         
            
          </table>
             
          
        </section>
             
        
        <section id="sums">
        
          <table cellpadding="0" cellspacing="0">
            <tr>
              <th>Sub-Total</th>
              <td><%="&#8377;"+ total%></td>
            </tr>
            
            <tr>
           <tr> <th>GST</th>
            <td>18%</td></tr>
              <th>Traveling Taxes</th>
              
              <td>&#8377; 50</td>
            </tr>
            <% total=total+50; %>
            <tr class="amount-total">
              <!-- {amount_total_label} -->
              <td colspan="2"><%="&#8377;"+ total%></td>
            </tr>
            
            <!-- You can use attribute data-hide-on-quote="true" to hide specific information on quotes.
                 For example Invoicebus doesn't need amount paid and amount due on quotes  -->
            <tr data-hide-on-quote="true">
              <th>Paid</th>
              <td>&#8377; 0.00</td>
            </tr>
            
            <tr data-hide-on-quote="true" class="due-amount">
              <th>Due sum</th>
              <td><%="&#8377;"+ total%></td>
            </tr>
            
          </table>
         
          
        </section>
        
        <div class="clearfix"></div>
        
        <section id="terms">
        <%
String s=f_name;
//out.println(s);
Statement st1=null;
st1=con.createStatement();
int i=st1.executeUpdate("insert into bill values("+bno1+",'"+s+"',"+total+",'"+date2+"')");





}

catch(Exception e)
{
	System.out.println(e);
}

%>
        
          <span></span><br>
            <div><b><%= f_name%>,</b> thank you very much. We really appreciate your business.<br>
Please send payments before the due date.<br>
Your ordered Service will get confirmed soon and we aim to have <b><u>at your home within 24hrs</u></b> as per company guidelines.</div>
          <br>
     
          <br>
          Assigned Persons,<br>
          Mr.Saurabh Shukla(Electrician Head)- +91 9873652611<br>
          Mrs.Anandi Jagdale(Cleaning Head)- +91 8893726477<br>
          Mr.Deepak Choudhari(Plumbing Head)- +91 7836275361<br>
          Mr.Shreyas Deshpande(Pest Control Head)- +91 9932837616<br>
          Mrs.Shreya Pande(Carpenting Head)- +91 88373628482<br>
          <br>
          For more Details or Queries, contact to our Customer Care Service:<br>
          +91 8885554646 OR +91 8884443636
        </section>

        
        <div class="printbtn">
            
                <button class="printbtn" onclick="myfun()">Print this!</button>
                <br>
              <b><font color="green"><a href="feedback.jsp" target="mainframe.jsp">Feedback Us!</a></font></b>  
            </div>
        
      </div>
      
    </div>
    <script type="text/javascript">
    function myfun(){
    	window.print();
    }
    
    </script>
  <!-- 
<script src="jquery.min.js"></script>
<script src="printThis.js"></script>
<script>
	$('#print').click(function(){
			$('.container').printThis({
				debug:false,
			importCSS:true,
			importStyle:true,
			printContainer:true,
			loadCSS: "http://localhost:8080/HousePro/header1/w3.css",
			pageTitle: "Print My Document 2",
			removeInline: false,
			printDelay: 333,
			header: "<h1 class='w3-center'>Print My Document 2</h1>",
			footer: null,
			formValues: true,
			canvas: false,
			base: false,
			doctypeString: '<!DOCTYPE html>',
			removeScripts: false,
			copyTagClasses: false
			});
	})
</script>-->
 </body>
</html>
