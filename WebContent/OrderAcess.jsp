<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.util.ArrayList" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <meta charset="UTF-8">
    <meta name="description" content="Travel Web Template">
    <meta name="keywords" content="Travel Template,Flight Template,Cars Template,Hotels Template,Responsive Template">
    <meta name="author" content="M.Bilal">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Travel Gateway</title>
    <!--styles files-->
    <link href="css1/font-awesome.min.css" rel="stylesheet">
    <link href="css1/bootstrap.min.css" rel="stylesheet">
    <link href="css1/jqx.base.css" rel="stylesheet">
    <link href="css1/animate.css" rel="stylesheet">
    <link href="css1/select2.min.css" rel="stylesheet">
    <link href="css1/slick.css" rel="stylesheet">
    <link href="css1/style.css" rel="stylesheet">
    <!--favicon-->
    <link rel="icon" href="../../favicon.ico">
    <!--end here-->
</head>
<body>
<nav class="navbar navbar-inverse">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="CustomerHome.jsp"><img src="img1/logo-v2.png" alt="logo"></a>
        </div>
        <!--navbar-collapse-->
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <!--Home-->
                <li class="dropdown">
                    <a class="dropdown-toggle" href="CustomerHome.jsp"> <i class="fa fa-home"></i>Home
                        </a>
                </li>
                <!--Flights-->
                <li class="dropdown">
                    <a class="dropdown-toggle"  href="selection.jsp"><i class="fa fa-car"></i>Car Rentals
                        </a>
                  
                </li>
                <!--Hotels-->
                <li class="dropdown">
                    <a class="dropdown-toggle" href="hotelselection.jsp"><i class="fa fa-hotel"></i>Hotels
                        </a>
                    
                </li>
                <!--Travels-->
                <li class="dropdown">  
                	            
                    <a class="dropdown-toggle"  href="PackageListController"><i class="fa fa-globe"></i>Packages
                     </a>
						
                </li>
				
                <!--ShortCodes-->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="javascript:;"> <i class="fa fa-th-list"></i>MyProfile
                        <span class="caret"></span></a>
                    <ul class="dropdown-menu"><li>
                 <form action="ManageCustomerProfileController">
				<table align="center">
				<tr>
				<td><input type="submit" value="My Profile" class="btn btn_order_now"/></td>
				</tr>
				</table>
				</form>
				</li>
				<li>
				<form action="ManageUpdateCustomerProfileController">
				<table align="center">
				<tr>
				<td><input type="submit" value="Update My Profile" class="btn btn_order_now"/></td>
				</tr>
				</table>
				</form>
				</li>
				<li><a href="UserFeedBack.jsp">Feedback</a></li>
				
				
				<li>
				<form action="OrderHistoryControllers">
				<table align="center">
				<tr>

				<td><input type="text" name="myemail" /></td>
				<td><input type="submit" value="Check Order History" class="btn btn_order_now"/></td>

				</tr>
				</table>
				</form>
				</li>
				
				
				
                  <!--   <li><a href="xyz.jsp">Check</a></li>     -->
                    </ul>
                </li>
                <!--Find My Flight-->
                <li class="visible-lg"><span><a href="CustomerLogin.jsp" class="btn btn_order_now">Log In</a></span></li>
            </ul>
        </div>
    </div>
</nav>
<!--navigation end here-->

<form  method="post" >
           <table border="5" class="table table-bordered table-striped">
    
    
            <% 
if (request.getAttribute("c1") != null) {
ArrayList arr1 = (ArrayList) request.getAttribute("c1");
out.println("<th>Your Car Booking</th>");%><tr><td>model</td><% 
 for (int i=0; i < arr1.size(); i++ )
 {
	 out.println( "<td><center>"+arr1.get(i)+"</center></td>");
    	               
  }%></tr><% 
}
else
{
            	System.out.println("no data");
}
 if (request.getAttribute("c2") != null) {
ArrayList arr1 = (ArrayList) request.getAttribute("c2");%><tr><td>location</td><% 
for (int i=0; i < arr1.size(); i++ )
	{
	 	out.println( "<td><center>"+arr1.get(i)+"</center></td>");
	     	               
	}%></tr><% 
	}
	else
	{
	         System.out.println("no data");
	}
 if (request.getAttribute("c3") != null) {
ArrayList arr1 = (ArrayList) request.getAttribute("c3");%><tr><td>price</td><% 
for (int i=0; i < arr1.size(); i++ )
	{
	 	out.println( "<td><center>"+arr1.get(i)+"</center></td>");
	     	               
	}%></tr><% 
	}
	else
	{
	         System.out.println("no data");
	}
%>
</table>
</form>
<form  method="post" >
           <table border="5" class="table table-bordered table-striped">
    
    
            <% 
if (request.getAttribute("c4") != null) {
ArrayList arr1 = (ArrayList) request.getAttribute("c4");
out.println("<th>Your Hotel Booking</th>");%><tr><td>Hotel Name</td><% 
 for (int i=0; i < arr1.size(); i++ )
 {
	 out.println( "<td><center>"+arr1.get(i)+"</center></td>");
    	               
  }%></tr><% 
}
else
{
            	System.out.println("no data");
}
 if (request.getAttribute("c5") != null) {
ArrayList arr1 = (ArrayList) request.getAttribute("c5");%><tr><td>Hotel Location</td><% 
for (int i=0; i < arr1.size(); i++ )
	{
	 	out.println( "<td><center>"+arr1.get(i)+"</center></td>");
	     	               
	}%></tr><% 
	}
	else
	{
	         System.out.println("no data");
	}
 if (request.getAttribute("c6") != null) {
ArrayList arr1 = (ArrayList) request.getAttribute("c6");%><tr><td>Price</td><% 
for (int i=0; i < arr1.size(); i++ )
	{
	 	out.println( "<td><center>"+arr1.get(i)+"</center></td>");
	     	               
	}%></tr><% 
	}
	else
	{
	         System.out.println("no data");
	}
%>
</table>
</form>
<!--footer start here-->
<footer class="main-footer">
    <!--end button here-->
    <div class="container">
        <div class="row">
            <div class="col-md-3 col-sm-6 col-xs-12">
                <div class="inner-footer">
                    <a href="CustomerHome.jsp"><img src="img1/logo.png" alt="logo" class="img-responsive"></a>
                    <p class="footer-content">
                        
                    </p>
                    <br>
                    <p class="footer-text"><span><a href="#"><i class="fa fa-phone"></i></a></span> Call Us 5182532710  Or 5189862450</p>
                    <p class="footer-text"><span><a href="#"><i class="fa fa-envelope"></i></a></span>  Email travelgateway@gmail.com</p>
                    <p class="footer-text"><span><a href="#"><i class="fa fa-map-marker"></i></a></span> Visit Us - 1400 Washington Ave, Albany, New York, USA</p>
                   
                </div>
            </div>

            <div class="col-md-3 hidden-sm col-xs-12">
                <div class="list-of-nav">
                    <div class="inner-footer1">
                        <h4>PAGES</h4>
                        <ul class="list-unstyled">
                            <li><a href="CustomerHome.jsp"><i class="fa fa-hand-o-right"></i> Home</a></li>
                            <li><a href="#"><i class="fa fa-hand-o-right"></i> About Us</a></li>
                            <li><a href="#"><i class="fa fa-hand-o-right"></i> Contact Us</a></li>
                        
                        </ul>
                    </div>
                </div>
            </div>
             <div class="col-md-3 hidden-sm col-xs-12">
                <div class="list-of-nav">
                    <div class="inner-footer1">
                       <h4>Pages</h4>
                        <ul class="list-unstyled">
                        <%System.out.println(request.getAttribute("customer_id")); %>
                            <%if (session.getAttribute("customer_id")!=null){ %>
                            <li><a href="CustomerLogin.jsp"><i class="fa fa-hand-o-right"></i> Log In</a></li>
                            <%}
                            else {%>
                            	<li><a href="CustomerLogin.jsp"><i class="fa fa-hand-o-right"></i> Log Out</a></li>
                            <% }
                            %>
                            <li><a href="CustomerRegistration.jsp"><i class="fa fa-hand-o-right"></i> Sign Up</a></li>
                            <li><a href="#"><i class="fa fa-hand-o-right"></i> Coming Soon</a></li>
                           
                        </ul>
                    </div>
                </div>
            </div>
         
            <div class="col-md-3 hidden-sm col-xs-12">
                <div class="inner-footer2">
                    <h4>AMAZING PLACES</h4>
                    <ul class="list-inline list-unstyled">
                        <li>
                            <div class="img-news">
                                <img src="img1/iso-1.jpg" alt="image" class="img-responsive">
                            </div>
                            <div class="content-news">
                                <p><a href="#">Hotel Hyatt having the biggest food festival.</a></p>
                                <small>April 1 - 2017</small>
                            </div>
                        </li>
                        <li>
                            <div class="img-news">
                                <img src="img1/new-index3-3.jpg" alt="image" class="img-responsive">
                            </div>
                            <div class="content-news">
                                <p><a href="#">Visit the Place of the month with special offers</a></p>
                                <small>May - June 2017</small>
                            </div>
                        </li>
                        
                    </ul>
                </div>
            </div>

        </div>
    </div>
    <p class="footer-bottom">&copy; copyright 2017 by Travel Gateway</p>
    <!--button back to top-->

</footer>
<!--footer end here-->

<!--page loader-->


<!--end here-->

<!--script files-->
<script src="js1/jquery.min.js"></script>
<script src="js1/bootstrap.min.js"></script>
<script src="js1/counter-Up-master/jquery.counterup.min.js"></script>
<script src="js1/jqwidgets/scripts/date-picker.js"></script>
<script src="js1/isotop/isotope-docs.min.js"></script>
<script src="js1/select2/select2.js"></script>
<script src="js1/slick.min.js"></script>
<script src="js1/parallax/parallax.min.js"></script>
<script src="js1/scrollreveal.min.js"></script>
<script src="js1/custom.js"></script>
<!--end script files-->
</body>
</html>
<!-- <form  method="post" >
           <table border="5" class="table table-bordered table-striped">
    
    
            <% 
if (request.getAttribute("c7") != null) {
ArrayList arr1 = (ArrayList) request.getAttribute("c7");
out.println("<th>Your Hotel Booking</th>");%><tr><td>Hotel Name</td><% 
 for (int i=0; i < arr1.size(); i++ )
 {
	 out.println( "<td><center>"+arr1.get(i)+"</center></td>");
    	               
  }%></tr><% 
}
else
{
            	System.out.println("no data");
}
 if (request.getAttribute("c8") != null) {
ArrayList arr1 = (ArrayList) request.getAttribute("c8");%><tr><td>Hotel Location</td><% 
for (int i=0; i < arr1.size(); i++ )
	{
	 	out.println( "<td><center>"+arr1.get(i)+"</center></td>");
	     	               
	}%></tr><% 
	}
	else
	{
	         System.out.println("no data");
	}
 if (request.getAttribute("c9") != null) {
ArrayList arr1 = (ArrayList) request.getAttribute("c9");%><tr><td>Price</td><% 
for (int i=0; i < arr1.size(); i++ )
	{
	 	out.println( "<td><center>"+arr1.get(i)+"</center></td>");
	     	               
	}%></tr><% 
	}
	else
	{
	         System.out.println("no data");
	}
%>
</table>
</form>
</body>
</html> -->