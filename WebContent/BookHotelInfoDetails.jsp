<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
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
    <link href="css1/slick.css" rel="stylesheet">
    <link href="css1/style.css" rel="stylesheet">
    <!--favicon-->
    <link rel="icon" href="../../favicon.ico">
    <!--end here-->
</head>
<body>
<!--start navigation bar-->
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
                    <a class="dropdown-toggle" data-toggle="dropdown" href="javascript:;"> <i class="fa fa-th-list"></i>Offers
                        <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                    <li><a href="#">  Special Discounts for Members</a></li>
                        <li><a href="#l">  25% off on Discover</a></li>
                        <li><a href="#">  Student Discount</a></li>
                        <li><a href="#">  Find more Offers</a></li>
                        
                    </ul>
                </li>
                <!--Find My Flight-->
                <li class="visible-lg"><span><a href="CustomerLogin.jsp" class="btn btn_order_now">Log In</a></span></li>
            </ul>
        </div>
    </div>
</nav>
<!--inner body start from here-->


<div class="inner-body">
    <div class="login_wrapper">
        <div class="container">
            <div class="row">
                <div class="col-md-offset-3 col-md-6 col-md-offset-3">
                    <div class="login-widget animte-reavel">
                                                    <div class="login-box">
                                                    <h1>Booking Information</h1>
                             	<form action="BookHotelController" method="post"> 
                           <!--  <form action="OrderHistoryControllers" method="post">
     -->                                <div class="form-group">
                                  <span><i class="fa fa-user"></i></span> 
                                   <input type="text" class="form-control" placeholder="Id" name="hotelid" value="<%=request.getAttribute("myid")%>" required="required">
                                </div>
                                <div class="form-group">
                                    <span><i class="fa fa-user"></i></span>      
                                    <input type="text" class="form-control" placeholder="FirstName" name="firstname" required="required">
                                </div>
                                <div class="form-group">
                                    <span><i class="fa fa-user"></i></span>      
                                    <input type="text" class="form-control" placeholder="LastName" name="lastname" required="required">
                                </div>
                                <div class="form-group">
                                    <span><i class="fa fa-user"></i></span>      
                                    <input type="text" class="form-control" placeholder="Email" name="email" required="required">
                                </div>
                                <div class="form-group">
                                    <span><i class="fa fa-user"></i></span>      
                                    <input type="text" class="form-control" placeholder="ContactInfo" name="contactinfo" required="required">
                                </div>
                                <div class="form-group">
                                    <span><i class="fa fa-user"></i></span>      
                                    <input type="text" class="form-control" placeholder="Book From" name="bookfrom" required="required">
                                </div>
                                <div class="form-group">
                                    <span><i class="fa fa-user"></i></span>      
                                    <input type="text" class="form-control" placeholder="Book To" name="bookto" required="required">
                                </div>
                                <div class="form-group">
                                    <span><i class="fa fa-user"></i></span>      
                                    <input type="text" class="form-control" placeholder="Number of Rooms" name="numberofrooms" required="required">
                                </div>
                                <div class="form-actions clearfix">
                                    
                                    <div class="submit-form text-center">
                                        <input type="submit" value="Book"class="btn submit-btn"></input><input type="reset" value="Reset"class="btn submit-btn"> 
                                        <div class="login-footer">
                                        </div>
                                                                           </div>
                                    
                                </div>
                            </form>
                        </div>
                        <div class="register">
                           
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>





<%-- <form name="form1" action="BookController" method="post">
<table align="center">
<tr>
<td>Id</td>
<td><input type="text" name="carid" value="<%=request.getAttribute("myid")%>"/></td>
</tr>
<tr>
<td>First Name</td>
<td><input type="text" name="firstname" /></td>
</tr>
<tr>
<td>Last Name</td>
<td><input type="text" name="lastname" /></td>
</tr>
<tr>
<td>Email</td>
<td><input type="text" name="email" /></td>
</tr>
<tr>
<td>Contact Info</td>
<td><input type="text" name="contactinfo" /></td>
</tr>
<tr>
<td>Book From</td>
<td><input type="text" name="bookfrom" /></td>
</tr>
<tr>
<td>Book To</td>
<td><input type="text" name="bookto" /></td>
</tr>
<tr>
<td>User Information Number</td>
<td><input type="text" name="drivinglicensenumber" /></td>
</tr>

<tr>
<td><%=(request.getAttribute("errMessage") == null) ? "" : request.getAttribute("errMessage")%></td>
</tr>
<tr>
<td></td>
<td><input type="submit" value="Book"></input><input type="reset" value="Reset"></input></td>
</tr>
</table>
</form> --%>
<!--inner body end from here-->
<!--back_to_top-->
<div id="back_to_top" class="no-margin">
    <div class="button">
        <i class="fa fa-chevron-up"></i>
    </div>
</div>
<!--end-->
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
                            
                            <li><a href="CustomerLogin.jsp"><i class="fa fa-hand-o-right"></i> Log In</a></li>
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
<script src="js1/parallax/parallax.min.js"></script>
<script src="js1/jqwidgets/scripts/date-picker.js"></script>
<script src="js1/slick.min.js"></script>
<script src="js1/custom.js"></script>
<!--end script files-->
</body>
</html>
