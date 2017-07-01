<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="t2.bean.*" %>
    <%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	<meta name="theme-color" content="#3e454c">
<%
ArrayList<Feedback> ps = (ArrayList<Feedback>) session.getAttribute("feedlist");
%>
	

	<!-- Font awesome -->
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<!-- Sandstone Bootstrap CSS -->
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<!-- Bootstrap Datatables -->
	<link rel="stylesheet" href="css/dataTables.bootstrap.min.css">
	<!-- Bootstrap social button library -->
	<link rel="stylesheet" href="css/bootstrap-social.css">
	<!-- Bootstrap select -->
	<link rel="stylesheet" href="css/bootstrap-select.css">
	<!-- Bootstrap file input -->
	<link rel="stylesheet" href="css/fileinput.min.css">
	<!-- Awesome Bootstrap checkbox -->
	<link rel="stylesheet" href="css/awesome-bootstrap-checkbox.css">
	<!-- Admin Stye -->
	<link rel="stylesheet" href="css/style.css">

<script type="text/javascript">
function submitForm(){
    $('#product_form').submit();
}
</script>

<script type="text/javascript">
function loadContent(id) {
	if(id == "manage_users")
 		document.getElementById("rightpane").innerHTML='<object type="text/html" width="100%" height="900px" data="ManageCustomer"></object>'; 
 		else if(id == "pending_request")
     		document.getElementById("rightpane").innerHTML='<object type="text/html" width="100%" height="900px" data="RequestApproval"></object>';
     		else if(id == "manage_vendors")
     		document.getElementById("rightpane").innerHTML='<object type="text/html" width="100%" height="900px" data="ManageVendor"></object>';
     		
     		//document.getElementById("rightpane").innerHTML='<object type="text/html"  width="100%" height="900px" data="VendorRegister.jsp"></object>';
     	
}
</script>
<title>Insert title here</title>
<%
	if(session.getAttribute("user") == null)
	{
		response.sendRedirect("Home.jsp");
	}
%>
</head>
<body>
<div class="brand clearfix">
		<a href="#" class="logo">Travel Guide System</a>
		<span class="menu-btn"><i class="fa fa-bars"></i></span>
		<ul class="ts-profile-nav">
			<li><a href="#">Help</a></li>
			<li><a href="#">Settings</a></li>
			<li class="ts-account">
				<a href="#"><img src="img/ts-avatar.jpg" class="ts-avatar hidden-side" alt=""> Account <i class="fa fa-angle-down hidden-side"></i></a>
				<ul>
					<li><a href="#">My Account</a></li>
					<li><a href="#">Edit Account</a></li>
					<li><a href="index.html">Logout</a></li>
				</ul>
			</li>
		</ul>
	</div>
	<div class="ts-main-content">
 	<nav class="ts-sidebar">
			<ul class="ts-sidebar-menu">
				
				<li class="ts-label">Admin Home Page</li>
				<li><a href="#" onclick="loadContent(this.id);" id="pending_request"><i class="fa fa-dashboard"></i>Pending Requests</a></li>
				<li><a href="#" onclick="loadContent(this.id);"	id="manage_vendors"><i class="fa fa-dashboard"></i> Manage Vendors</a></li>
				<li><a href="#" onclick="loadContent(this.id);" id="manage_users"><i class="fa fa-dashboard"></i> Manage Users</a></li>
				<form action="FeedForAdmin" method="post">
                                <input type="submit" value="View Feedbacks" class="btn btn_select-v2">
                                </form>
				<!-- Account from above -->
			</ul>
		</nav>
	    <div id="rightpane"
			style="border: 2px solid white; border-radius: 5px; border-style: rounded; min-height: 100%; width: 70%; margin-left: 20%">
		</div>
		
	</div>
<div class="ts-main-content">
		
		<div class="content-wrapper">
			<div class="container-fluid">

				<div class="row">
					<div class="col-md-12">


<form action="ManageProductDetails" method="post" id="product_form" >
<h2 class="page-title">Tables</h2>

						
						<div class="panel panel-default">
							<div class="panel-heading">All Vendors</div>
							<div class="panel-body">
								<table id="zctb" class="display table table-striped table-bordered table-hover" cellspacing="0" width="100%">
									<thead>
										<tr>
											<th>Have visited?</th>
											<th>Reason?</th>
											<th>Need?</th>
											<th>Improvement</th>
											<th>Excess?</th>
											
											
										</tr>
									</thead>


	<tbody>
		<%for(int i=0;i<ps.size();i++){%>					
			<tr>
			<td><%=ps.get(i).getCustomer_visit() %></td>
			<td><%=ps.get(i).getCustomer_reason() %></td>
			<td><%=ps.get(i).getCustomer_need() %></td>
			<td><%=ps.get(i).getCustomer_improve() %></td>
			<td><%=ps.get(i).getCustomer_easy() %></td>
			</tr>
			<%} %>	
	</tbody>
						
	

</table>
</div></div>
</form>

</div></div></div></div></div>





	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap-select.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.dataTables.min.js"></script>
	<script src="js/dataTables.bootstrap.min.js"></script>
	<script src="js/Chart.min.js"></script>
	<script src="js/fileinput.js"></script>
	<script src="js/chartData.js"></script>
	<script src="js/main.js"></script>
</body>
</html>