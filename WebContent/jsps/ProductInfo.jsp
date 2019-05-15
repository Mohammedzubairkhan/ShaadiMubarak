<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    

<html lang="en">

<head>
<title>Product Details</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Shop Item - Start Bootstrap Template</title>

    <!-- Bootstrap Core CSS -->
    <link href="info/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="info/css/shop-item.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

   

    <!-- Page Content -->
    <div class="container">

        <div class="row">

            <div class="col-md-3">
              <a href="index.jsp">  <p class="lead">Shaadi Mubarak</p></a>
                <div class="list-group">
                    <a href="#" class="list-group-item active">Supplier Details:-</a>
                    <a href="#" class="list-group-item">Name: ${supp_name}</a>
                    <a href="#" class="list-group-item">Zipcode: ${supp_code}</a>
                </div>
            </div>

            <div class="col-md-9">

                <div class="thumbnail">
                    <img class="img-responsive" src="images/${employ.pid}.jpg" alt="${employ.name}">
                    <div class="caption-full">
                        <h4 class="pull-right">Rs.${employ.value}/${employ.mesure}</h4>
                    
                        <h4><a href="#">${employ.name}</a>
                        </h4>
                        <p><strong>Category:</strong> <a target="_blank" href="Caterer?id=${occu_no}">${employ.occ}</a></p>
                        <p><strong>Description: </strong> ${employ.descp}
                            </p>
                        <div>   
                    	<form action="CartInserion" method="post"> 
						  <input type="hidden" name="pid" value="${employ.pid}">
						    quantity: <input type="integer" name="qty" value="0" size="1">
						    <br><br>
							<input type="submit" class="btn btn-danger" value="add to cart"></input>
                         
                            </form>
                        </div>
                    </div> 
                    <div class="ratings">
                        <p class="pull-right">${no_reviews} reviews</p>
                        <p>
                            <span class="glyphicon glyphicon-star"></span>
                            
                           ${employ.star}.0 stars
                        </p>
                    </div>
                </div>

                <div class="well">

                    <div class="text-left">
                        <form action="ReviewServlet" method="post">
                         <input type="hidden" name="pid" value="${employ.pid}">
                            Star Rating :
                            <select name="stars">
                                <option value="0">0 - Pathetic</option>
                                 <option value="1">1 - Worst </option>
                                 <option value="2">2 - Ok</option>
                                 <option value="3">3 - Good</option>
                                 <option value="4">4 - Superb</option>
                                 <option value="5">5 - Awesome</option>
                                
                            </select>
                            <br><br>
                             Review :     
                            <textarea name="message" cols="50" rows="3"></textarea>
                                    <br> <br>
                                                    <input type="submit" name="Submit" value="Leave a Review" class="btn btn-success">
                            </form>
                       
                    </div>
<!--review loop-->
<c:set var="std" value="${no_reviews}" scope="request"  />
<%
int k = (int)request.getAttribute("std");

if(k > 0){ %>
<c:forEach items="${emp}" var="employ_r">
                    <hr>
                    <div class="row">
                        <div class="col-md-12">
                         ${employ_r.name}
                         <br>
                        <c:set var="st" value="${employ_r.stars}" scope="request"  />
                        <% 
                        int iter = (int)request.getAttribute("st");
						
						for(int i = iter; i > 0; i--){
                        %>
                            <span class="glyphicon glyphicon-star"></span>
                           	<%} %>
                         
                            
                            <p>${employ_r.text}</p>
                        </div>
                    </div>
<!--loop review end--></c:forEach>
<%} %>
                    <hr>

                    

                  

                </div>

            </div>

        </div>

    </div>
    <!-- /.container -->

    <div class="container">

        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; Shaadi Mubarak 2018</p>
                </div>
            </div>
        </footer>

    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="info/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="info/js/bootstrap.min.js"></script>

</body>

</html>
    