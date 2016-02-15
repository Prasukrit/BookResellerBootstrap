<%-- 
    Document   : loadfinalitem
    Created on : Apr 17, 2015, 11:27:17 AM
    Author     : Aratto
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@tag description="Load item of orders before checkout" pageEncoding="UTF-8"%>
<%@attribute required="true" rtexprvalue="true" name="orderlist" type="java.util.List" %>
<c:forEach items="${orderlist}" var="ol">
    <tr>
        <td>${ol.orderId}</td>
        <td>${ol.bookPurchase.title}</td>
        <td>${ol.quantity}</td>
        <td>${ol.price}</td>
        <td>${ol.price * ol.quantity}</td>
    </tr>
</c:forEach>
