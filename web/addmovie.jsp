<%-- 
    Document   : addmovie
    Created on : Apr 24, 2017, 9:51:40 PM
    Author     : NITHYA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="headerl.jsp" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AdminLoggedIn</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
    
    
    </head>

<body>
        <form class="form-horizontal" action="CarServlet" method="post">
            <section id="how">
            <div class="section-header">
                <p class="section-title text-center wow fadeInDown">Hello Admin :)</p>
            </div>
            <div class="container" >                
                <div class='col-md-6 well' style="left:25%;height: 200%;">	
    <div class="form-group">
        <label class="col-md-3 control-label"><h4> Car Id</h4></label>
        <div class="col-md-8">
            <input type="text" name="carid" class="form-control" title = 'select your user name'>
        </div>
    </div>
    <div class="form-group">
        <label class="col-md-3 control-label"><h4>Car name</h4></label>
        <div class="col-md-8">
            <input type="text" name="carname" class="form-control" title = 'select your password'>
        </div>
    </div>
    <div class="form-group">
        <label class="col-md-3 control-label"><h4>Price</h4></label>
        <div class="col-md-8">
            <input type="text" name="price" class="form-control" title = 'select your password'>
        </div>
    </div>
   
	<div class='col-md-offset-3'>
        <input  type="submit" name="addcar" value="Add Car" class="btn btn-primary btn-lg"/>&nbsp;&nbsp;<input type="submit" name="viewcars" value="View Cars" class="btn btn-primary btn-lg"/>       
	</div>           
</div>
</div>
            </section>        
</form>
</body>
</html>



<%@include file="footer.jsp" %>