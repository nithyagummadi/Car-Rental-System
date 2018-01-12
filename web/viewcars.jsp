<%-- 
    Document   : viewcars
    Created on : Apr 24, 2017, 12:27:08 PM
    Author     : NITHYA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="headerl.jsp" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DisplayCarsToUser</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
    </head>
    
    <body>  <section id="how">      
         <div class="container" >
               <h3>  <i> Logged in as ${username}</i> </h3>   
        <form action="CarServlet" method="post">
           
            <table class="table">
                <tr>
                    <th>CarId</th>
                    <th>CarName</th>
                    <th>Price per hour</th>
                     <th></th>                  
               
                </tr>
                <c:forEach var="car" items="${carList}" >
                    <tr>
                        <td>${car.car_id}</td>
                        <td>${car.car_name}</td>
                        <td>${car.price}</td>
                        
                        <td><a href="CarServlet?action=rentcar&amp;carId=${car.car_id}&amp;uemail=${username}">Rent</a></td>
                        
                    </tr> 
                </c:forEach>
                <!-- Hint! Remember to code for the 'Edit' and 'Delete' links -->  
            </table>
          
        </form>
         </div></section>
        <!-- Hint! You need to code a form for the 'Add Product' button -->
    </body>
</html>




<%@include file="footer.jsp" %>
