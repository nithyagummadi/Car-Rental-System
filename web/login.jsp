<%-- 
    Document   : login
    Created on : Apr 24, 2017, 10:10:08 AM
    Author     : NITHYA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<%-- Section to input login details --%>
<br/>
<%-- Code to create login form--%><section id="how">
<form class="form-horizontal" action="CarServlet" method="post">

    <input type="hidden" name="action" value="login">
    <div class="form-group">
        <label class="col-sm-4 control-label" >Email Address *</label>
        <div class="col-sm-4">
            <input type="text"  class="form-control" name="username" required/>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-4 control-label" >Password *</label>
        <div class="col-sm-4">
            <input class="form-control" type="password" name="password" required/>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-4 col-sm-10">
            <input type="submit" name="login" value="Log in" class="btn btn-primary" >
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-4 col-sm-10">
            <a href="adminlogin.jsp">Log in as admin</a><br>    
        </div>
    </div>
</form> <br/>
<div class="row col-md-4 col-md-offset-4">
    <%-- Code to go to Sign up for a new account  --%>
    <a href="register.jsp" id="sign_up_link">New? Register Now</a>
</div>
<p class="error">${msg}</p>
<br/>
<br/>
<br/></section>

    <%-- Include tag is used to import footer page --%>
<%@include file="footer.jsp" %>
