<html>
    <head>
        <style type="text/css">
            body{
                margin:0;
                padding:0;
                background:white;
                font-family: sans-serif;
            }
            .main{
                height:120vh;
                margin-top: -10%;
                width: 60%;
                padding: 10%;
                box-sizing: border-box;
                border: 1px solid rgba(0,0,0,0.3);
                box-shadow: 0 15px 20px rgba(0,0,0,0.5);
                }
            h1{
                font-size: 1.5em;
                text-align: center;
                color: #ff3d3d;
            }
            p:readmore{
            text-align: justify;
                font-size: 1.0em;
                 transition: 0.3s ease;
            }
            p{
                text-align: justify;
                font-size: 1.0em;
                
            }
            #readmore{
                display: none;
                transition: 0.3s ease;
                
            }
            button{
                border: none;
                outline: none;
                font-size: 20px;
                font-weight: bold;
                float: left;
                background: #fff;
                color: #ff3d3d;
                cursor: pointer;
                transition: 0.2s ease;
            }
            button:hover{
                font-size: 25px;
            }
            .btn ul{
    margin-left: 200px;
    float: left;
    list-style-type: none;
    margin-top: 50px;
    margin-bottom: 50px;
}

.btn ul li{
    display: inline-block;
}

.btn ul li a{
    text-decoration: none;
    color: #ff3d3d;
    font-size: 20px;
    padding: 5px 20px;
    border: 1px solid solid transparent; 
    transition: 0.6s ease;
}

.btn ul li a:hover{
    background-color: #ff3d3d;
    color: #fff;
    border: 1px solid #fff;    
}
        </style>
    </head>
    <body>
       <center><div class="main">
        <h1>Terms &amp; Conditions</h1>
        
        <p id="readless">
        Please read all the terms of use thoroughly and carefully. the terms and conditions set forth below ("Terms of use") and the Privacy Policy (as defined below) constitute a legally-binding agreement between HousePro operating from its Pune Coporate Office and you.<span id="dots">..</span></p>   
        <p id="readmore">
            1. The online transaction between those users of the website who are offering services(each, a "Service Professional") and those users of the website who are obtaining services (each, a "service professional") and those users of the website who are obtaining services (each a "service User") through the website
        </p>
            <button id="Read" onclick="Read()">Read More</button>
           </div></center>
        <div class="btn">
        <ul>
            <b>Select Payment options-</b>
            <li class="active"><a href="cashondelivery.jsp">Cash On Delivery</a></li>
                <li><a href="#">Online Payment</a></li>
                <li><a href="tabs.jsp">Back</a></li>
            </ul>
            </div>
        <br><br><br><br>    
    <script>
        var i = 0;
        var readmore=document.getElementById('readmore');
        var dots=document.getElementById('dots');
        var btn=document.getElementById('Read');
        function Read()
        {
            if(i==0)
                {
                    readmore.style.display="block";
                    dots.style.display="none";
                    btn.innerHTML="Read Less";
                    i=1;
                }
            else
                {
                    readmore.style.display="none";
                    dots.style.display="block";
                    btn.innerHTML="Read More";
                    i=0;
                }
        }
        </script>
    </body>
</html>