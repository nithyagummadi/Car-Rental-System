<%-- 
    Document   : main
    Created on : Apr 24, 2017, 11:50:11 AM
    Author     : NITHYA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="headerl.jsp" %>
 <section id="how"><div class="container">
         <h3>  <i> Logged in as ${username}</i> </h3> 
        <form name="user" action="CarServlet" method="post">
            <blockquote>
                <a href="CarServlet?action=viewcarsbyuser&amp;uemail=${username}">View available cars</a><br>             
                <a href="CarServlet?action=editprofile&amp;uemail=${username}">Edit Profile</a><br>
            
            </blockquote>
        </form>
     </div></section>
<%@include file="footer.jsp" %>