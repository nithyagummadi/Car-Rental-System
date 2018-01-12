<%-- 
    Document   : mail
    Created on : Apr 24, 2017, 12:38:45 PM
    Author     : NITHYA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="headerl.jsp" %>


<html>
    <head>
        
        <title>MailConfirmation</title>
    </head>
    <body class="container"><br><br>
        <section id="how">
        <blockquote>
        <h3>Car Reserved!!</h3>
        <form action="EmailServlet" method="post">
         
         <label class="pad_top">Email:</label>
         <input type="email" name="email"><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="send confirmation" class="">
        
         </form>
        </blockquote>
            <b style="color: red;padding-left: 10%;font-size: 30px;"> <a href="main.jsp">Home</a></b></section>
    </body>
</html>
<%@include file="footer.jsp" %>