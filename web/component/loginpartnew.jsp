<%-- 
    Document   : loginpart
    Created on : Apr 7, 2015, 10:07:05 PM
    Author     : Aratto
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- New user-->
<h2>Login/Register</h2>
<hr>
<form action="Login" method="post" style="display: inline">
    <p style="font-size: 0.75em; color: red">${messageLogin}</p>
    <div class="form-group form-signin">
        <label for="exampleInputEmail1">Username</label>
        <input type="text" class="form-control" name="username" id="exampleInputEmail1" placeholder="Enter username" required></div>
    <div class="form-group">
        <label for="">Password</label>
        <input type="password" class="form-control" name="password" id="" placeholder="Password" required></div>

    <div class="checkbox">
        <label>
            <input type="checkbox" value="remember-me">Remember me</label>
    </div>
    <button type="submit" class="btn btn-default">Login</button>
</form>
<a href="register.jsp">
    <button class="btn btn-default" type="submit" >Sign up</button>
</a>
<!--/New user-->
