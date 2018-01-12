<%-- 
    Document   : editcar
    Created on : Apr 24, 2017, 11:20:14 PM
    Author     : NITHYA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="headerl.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/owl.carousel.css" rel="stylesheet">
    <link href="css/owl.transitions.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">
    <link href="css/responsive.css" rel="stylesheet">        
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
    
        <title>Editcar</title>
    </head>
    <body>
        
        
  
  <form class="form-horizontal" action="CarServlet" method="post">
        
            <div class="section-header">
                <p class="section-title text-center wow fadeInDown">edit car</p>
            </div>
            <div class="container" >
                
                <div class='col-md-6 well' style="left:25%;height: 200%;">	    
    <div class="form-group">
        <label class="col-md-3 control-label"><h4>Car name</h4></label>
        <div class="col-md-8">
            <input type="text" name="title" class="form-control" value="${car.car_name}" title = 'select your password'>
        </div>
    </div>
    <div class="form-group">
        <label class="col-md-3 control-label"><h4>Price</h4></label>
        <div class="col-md-8">
            <input type="text" name="year" class="form-control" value="${car.price}" title = 'select your password'>
        </div>
    </div>
    
	<div class='col-md-offset-3'>
        <input type="submit" name="UpdateExist" value="Update Movie" class="btn btn-primary btn-lg"/>
       
	</div>
           

</div>
</div>          
</form>
        <b style="color: red;padding-left: 10%;font-size: 30px;"> <a href="index.jsp">Logout</a></b>
</body>
</html>
<%@include file="footer.jsp" %>