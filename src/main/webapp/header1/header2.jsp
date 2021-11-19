<html>
<head>
    <title>HousePro Home</title>
     <link rel="stylesheet" type="text/css" href="header1style.css">
     <link href="https://unpkg.com/ionicons@4.5.10-0/dist/css/ionicons.min.css" rel="stylesheet">
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    
    </head>
    <body>
       <header>
        <div class="main">
            <div class="logo">
            <img src="home.png">
            </div>
            <div class="name">
            <h2>HousePro</h2>
            </div>
            <ul id="hm">
            <li class="active"><a href="header1.jsp">Home</a></li>
                <li><a href="mainframe.jsp">Services</a></li>
                
                <li><a href="aboutus.jsp">About Us</a></li>
                <li><a href="feedback.jsp">Feedback Us</a></li>
                <li><a href="Worker.jsp">Become a Professional</a></li>
            </ul>
             <div class="signup">
            <a href="signup1.jsp">Logout</a>
            </div>
           
            </div>
     
            
        </header>
        
        <div class="search_box">
                <input type="text" placeholder="Search for services" autocomplete="off" id="myInput" onkeyup="searchservice()"/>
                <div class="searchbtn" href="#">
                <a href="search.png"><i class="fas fa-search"></i></a></div>
                <div class="servicebox">
                <ul id="myUL">
                <li><a href="#">Electrician Services</a></li>
                <li><a href="#">Plumbing Services</a></li>
                <li><a href="#">Carpenter Services</a></li>
                <li><a href="#">Pest Controlling Services</a></li>
                </ul>
                </div>
                
                <script>
                const searchservice = () =>{
                	let filter = document.getElementById('myInput').value.toUpperCase();
                	let ul = document.getElementById('myUL');
                	let li = ul.getElementsByTagName('li');
                	
                	for(var i=0; i<li.length; i++){
                		let a = li[i].getElementsByTagName('a')[0];
                		
                		let textValue = a.textContent || a.innerHTML ;
                	 
                		if(textValue.toUpperCase().indexOf(filter) > -1){
                			li[i].style.display = '';
                		}else{
                			li[i].style.display = 'none';
                		}
                	}
                }
				</script>
             </div>
    
       <div class="icon-menu">
       
        <ul>
      	  <li><a href="tabs.jsp">
      	  <div class="icon">
      	  <i class="fa fa-television" aria-hidden="true"></i>
  	        	  </div>
      	  <div class="name" data-text="Electric">Electric</div>
      	  </a></li>
      	  
      	   <li><a href="#">
      	  <div class="icon">
      	 <i class="fa fa-bath" aria-hidden="true"></i>
  	        	  </div>
      	  <div class="name" data-text="Plumbing">Plumbing</div>
      	  </a></li>
      	  
      	   <li><a href="#">
      	  <div class="icon">
      	  <i class="fa fa-linode" aria-hidden="true"></i>
  	        	  </div>
      	  <div class="name" data-text="Cleaning">Cleaning</div>
      	  </a></li>
      	  
      	   <li><a href="#">
      	  <div class="icon">
      	  <ion-icon name="construct"></ion-icon>
  	        	  </div>
      	  <div class="name" data-text="Carpenting">Carpenting</div>
      	  </a></li>
      	  
      	   <li><a href="#">
      	  <div class="icon">
      	  <ion-icon name="bug"></ion-icon>
      	  
  	        	  </div>
  	        	  
      	  <div class="name" data-text="More">Pest Control</div>
      	  </a></li>
        </ul>
       </div>
       
       <div class="footer">
         <div class="footer-content">  
          
	        <ul> 
	             <li><a href="#">Terms & Condition</a></li>
	            
	             <li><a href="#">Contact us</a></li>
	            
	             <li><a href="Worker.jsp">Careers</a></li>
	            
	            <li><a href="#">About Us</a></li>
	            
	            <li><a href="service.jsp">Services</a></li>
	            
	            <li class="left"><a href="#">Serving in Pune</a></li>
	        </ul>
       </div>
           
        <div class= "footer-bottom">     
           &copy;2020 |Designed by housepro
         </div>
    </div>
    <script src="https://unpkg.com/ionicons@4.5.10-0/dist/ionicons.js"></script>
    </body>
</html>