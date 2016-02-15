<%-- 
    Document   : cart
    Created on : Apr 8, 2015, 10:20:25 PM
    Author     : Aratto
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class=" navbar-form navbar-right cart">
    <a href="ShowCart">
        <img src="image/cart.png"></a>
    <span >${cart != null ? cart.getOrderList().size() : 0} ชิ้น</span>
</div>
