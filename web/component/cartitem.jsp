<%-- 
    Document   : cartitem
    Created on : Apr 9, 2015, 10:15:56 AM
    Author     : Aratto
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<tr>
    <td>${o.getBookPurchase().getTitle()}</td>
    <td>
        <c:choose>
            <c:when test="${o.getBookPurchase().getCover() == null}">
                <img src="img/items/none.png">
            </c:when>
            <c:when test="${o.getBookPurchase().getCover() != null}">
                <img src="${o.getBookPurchase().getCover()}">
            </c:when>
        </c:choose>
    </td>
    <td>
        <input class="form-control" type="number" value="1" style="width:70px">
    </td>
    <td>
        <fmt:formatNumber type="number" maxFractionDigits="2" minFractionDigits="2" value="${o.getPrice()}" />
    </td>
    <td>
        <a href="">
            <img src="image/item/remove.png" class="remove">
        </a>
    </td>
    <td><fmt:formatNumber type="number" maxFractionDigits="2" minFractionDigits="2" value="${o.getPrice() * o.getQuantity()}" /></td>
</tr>
