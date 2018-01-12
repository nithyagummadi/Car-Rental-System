<%-- 
    Document   : confirmdelete
    Created on : Apr 24, 2017, 11:20:46 PM
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
        <title>Conform Delete</title>
    </head>
    <body>
          <div class="container" >
 <form action="CarServlet" method="post"> 
        <h3> Delete this product?</h3>
        <blockquote>
        <label>Char Name: ${car.car_name}</label><br>
        <label>Price: ${car.price}</label><br>
        
        
        </blockquote>
        <input type="submit" name = "Yes" value="Yes" class="btn btn-primary btn-sm"/><input type="hidden" name = "carId" value="${car.car_id}">&nbsp;&nbsp;
        <input type="submit" name = "No" value="No" class="btn btn-primary btn-sm"/> 
        
        </form>
          </div>
       <b style="color: red;padding-left: 10%;font-size: 30px;"> <a href="index.jsp">Logout</a></b>
    </body>
</html>
<%@include file="footer.jsp" %>