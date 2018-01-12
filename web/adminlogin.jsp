<%-- 
    Document   : adminlogin
    Created on : Apr 24, 2017, 11:33:00 PM
    Author     : NITHYA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html> <%@include file="header.jsp" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AdminLogin</title>
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
    
    </head>
    <body>
    <!--    <h3>Login As Admin here</h3>
        <form action="MovieServlet" method="post">
        Username:   <input type="text" name="adminname" value="" /><br><br>        
        Password:   <input type="text" name="adminpassword" value="" /><br><br>
        <input type="submit" value="LogIn" name="adminlogin" />-->
        
   
    
        <form class="form-horizontal" action="CarServlet" method="post">
        <div class="container"  >
            <div class="section-header"><br>
                <p class="section-title text-center wow fadeInDown">Login As Admin here</p>
            </div>
            <div class="container" >
                
                <div class='col-md-6 well' style="left:25%;height: 200%;">
	
    <div class="form-group">
        <label class="col-md-3 control-label"><h4>Username:</h4></label>
        <div class="col-md-8">
            <input type="text" name="adminname" class="form-control" title = 'select your user name'>
        </div>
    </div>
    <div class="form-group">
        <label class="col-md-3 control-label"><h4>Password:</h4></label>
        <div class="col-md-8">
            <input type="password" name="adminpassword" class="form-control" title = 'select your password'>
        </div>
    </div>
    
	<div class='col-md-offset-3'>
        <input type="submit" name="adminlogin" value="sign in" class="btn btn-primary btn-lg"/>
      
	</div>
            <br><br>

</div>
</div>
           
        </div>
        </form>
</body>
</html>
<%@include file="footer.jsp" %>
