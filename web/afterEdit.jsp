<%-- 
    Document   : afterEdit
    Created on : Apr 24, 2017, 12:20:28 PM
    Author     : NITHYA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="headerl.jsp" %>

<body>
         <section id="how"><div class="container" >
        <h3>Profile edited as:</h3>
        
        <label>First Name: ${cust.name}</label><br>
        
        <label>Address: ${cust.getAddress()}</label><br>
        <label>City: ${cust.city}</label><br>
        <label>State: ${cust.state}</label><br>
        
        <label>Zip code: ${cust.zipcode}</label><br>
        
        
       <b style="color: red;padding-left: 10%;font-size: 30px;"> <a href="main.jsp">Home</a></b>
             </div></section>
    </body>



<%@include file="footer.jsp" %>