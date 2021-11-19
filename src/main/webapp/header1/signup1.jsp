<html>
<head>
    <title>Signup/Login HousePro A/C</title></head>
    <link rel="stylesheet" type="text/css" href="signupstyle.css">
   
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css">
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
   
    <body class="bg-image">
        
          <header>
        <div class="main">
            <div class="logo">
            <img src="home.png">
            </div>
            <div class="name">
            <h2>HousePro</h2>
            </div>
            <ul>
            <li><a href="header1.jsp">Home</a></li>
                <li><a href="mainframe.jsp">Services</a></li>
               
                <li><a href="aboutus.jsp">About Us</a></li>
                <li><a href="Worker.jsp">Become a Professional</a></li>
            </ul>
             <div class="signup">
            <a href="signup1.jsp">Login/Sign Up</a>
            </div>
            <div class="search_box">
                <input type="text" placeholder="Search for services">
                <div class="searchbtn" href="#">
                <a href="search.png"><i class="fas fa-search"></i></a>
                </div>
            </div>
            </div>
        </header>
        <div id="login-box">
            <div class="left-box">
                <form action="savesignup1.jsp" name="form1" id="signup" class="input-group" method="post">
                    <h1>Sign Up</h1>
            <input type="text" name="name" id="form_name" placeholder="Full Name" pattern="[A-Za-z ]{1,32}" title="Please enter a valid name! (Firstname Lastname)" required/>
            <span class="error_form" id="name_error_message"></span>
            <input type="text" name="username" id="form_uname" placeholder="Username" pattern="[A-Za-z0-9_]{1,15}" title="Username must contain less than 15 characters...combination of alphabets, numbers or Underscore!" required/>
             <span class="error_form" id="uname_error_message"></span>
            <input type="email" name="email" id="form_email" placeholder="Email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" title="E.g, abc123@gmail.com" required/>
             <span class="error_form" id="email_error_message"></span>
            <input type="password" name="password" id="form_password" placeholder="Password" pattern=".{8,}" title="Eight or More Characters!" required/>
             <span class="error_form" id="password_error_message"></span>
            <input type="text" name="phoneno" id="form_phoneno" placeholder="Phone No" pattern="[789][0-9]{9}" title="Please enter a valid phone no!" required/>
             <span class="error_form" id="phoneno_error_message"></span>
           <!--  <input type="text" name="address" id="form_address" placeholder="Address" title="Address must have flat no, building, area name, area code, city, etc." required/>
             -->
            
            <input type="text" name="FHFB" placeholder="Flat/House No./Floor/Building" title="Address must have Flat/House No./Floor/Building" required/>
<input type="text" name="CSL" placeholder="Colony/Street/Locality/Landmark" title="Address must have Colony/Street/Locality/Landmark" required/>

<input type="text" name="city" placeholder="City" title="Address must have your city name" required/>

            
            
            
            <input type="text" name="pincode" id="form_pincode" placeholder="Pincode" pattern=".{6,}" title="Pincode must have 6 digits!" required/>
             <span class="error_form" id="pincode_error_message"></span>
             
             <input type="text" name="state" placeholder="State" title="Address must have State" required/>
       
                    
            <input type="checkbox" name="checkbox" required/><span>I agree terms &amp; conditions.</span><br>
            <input type="submit" name="signup-button" value="SignUp"/>
                    </form>
                <form action="savesignup1.jsp" id="login" class="input-group">
                      <h1>Login</h1>
            <input type="text" name="username" placeholder="User id" pattern="[A-Za-z0-9_]{1,15}" title="Username must contain less than 15 characters...combination of alphabets, numbers or Underscore!" required/>
            <input type="password" name="password" placeholder="Enter Password" pattern=".{8,}" title="Eight or More Characters!" required/>
                     <input type="checkbox" name="checkbox" required/><span>Remember Password.</span><br>
            <input type="submit" name="signup-button" value="Login"/>
                    </form> 
            </div>
            <div class="right-box">
                <span class="signinwith">Sign in with<br/>Social Network
                </span>
                <a href="http://www.facebook.com"><button class="social facebook">Log In With Facebook</button></a>
               <a href="http://www.twitter.com"> <button class="social twitter">Log In With Twitter</button></a>
               <a href="https://plus.google.com"> <button class="social Google">Log In With Google+</button></a>
                <div class="form-box">
                <div class="button-box">
                    <div id="btn"></div>
                   <button type="button" class="toggle-btn" onclick="login()">LogIn</button>
                    <button type="button" class="toggle-btn" onclick="signup()">SignUp</button>
                    </div>
                </div>
            </div>
            <div class="or">OR</div>
        </div>
        
         <div class="footer">
         <div class="footer-content">  
          
	        <ul> 
	             <li><a href="#">Terms and condition</a></li>
	            
	             <li><a href="#">contact us</a></li>
	            
	             <li><a href="#">careers</a></li>
	            
	            <li><a href="aboutus.jsp">about us</a></li>
	        </ul>
       </div>
            <div class="left"> 
                <label>serving in pune</label>
        
         </div>
        <div class= "footer-bottom">     
           &copy;2020 |Designed by housepro
         </div>
    </div>
        
    
        
        
        <script type="text/javascript">
        var x=document.getElementById("login");
            var y=document.getElementById("signup");
            var z=document.getElementById("btn");
            function signup(){
                x.style.left="-500px"; 
                y.style.left="50px"; 
                z.style.left="110px";
            }
             function login(){
                x.style.left="50px"; 
                y.style.left="450px"; 
                z.style.left="0";
            }
            </script>
          
 </body>
</html>           
    
        
   