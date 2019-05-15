<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- html, head and starting body tag ... -->
<html>
<head>
<title>cart</title>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="cart/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href='//fonts.googleapis.com/css?family=Signika:400,300,600,700' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="cart/js/jquery-1.11.1.min.js"></script>
<script>$(document).ready(function(c) {
	$('.alert-close').on('click', function(c){
		$('.message').fadeOut('slow', function(c){
	  		$('.message').remove();
		});
	});	  
});
</script>
<script>$(document).ready(function(c) {
	$('.alert-close1').on('click', function(c){
		$('.message1').fadeOut('slow', function(c){
	  		$('.message1').remove();
		});
	});	  
});
</script>
<script>$(document).ready(function(c) {
	$('.alert-close2').on('click', function(c){
		$('.message2').fadeOut('slow', function(c){
	  		$('.message2').remove();
		});
	});	  
});
</script>
</head>
<body>
<%
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
if(session.getAttribute("uname") == null){
	response.sendRedirect("login.html");
}
%>

 <div class="main">
			<h1>Cart</h1>
			<div class="main-grid1">
				<ul>
					<li><a href="#" class="car">Cart items</a></li>
				</ul>
			</div>
			<div class="main-grid2">
				<h2>My Shopping Bag</h2>
				 <c:forEach items="${emp}"  var="employ" >
				
				<div class="cart_box">
					<div class="message">
						 <a href="DeleteServletCart?oid=${employ.oid}"><div class="alert-close"> </div> </a>
						<div class="list_img"><img src="images/${employ.pid}.jpg" class="img-responsive" alt=""/></div>
						<div class="list_desc"><h4><a href="#">${employ.name}</a></h4><span class="actual">
						 Rs.${employ.total}</span></div>
						<div class="clear">
							</div>
					</div>
				</div>
				   </c:forEach>  
				<div class="total">
					<div class="total-left">
						<p>Total :<span> Rs.${total}</span></p>
					</div>
					<div class="total-right">
						<a href="payment.html">Check Out</a>
					</div>
					<div class="clear"> </div>
				</div>
				<hr>
				 <center> <a href="index.jsp">Continue Shopping</a></center>
				 <hr>
			</div>
			 
		</div>
     


  
  
</body>
</html>
