<%-- 
    Document   : sumPrice
    Created on : Apr 17, 2015, 12:32:30 PM
    Author     : Aratto
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@tag description="put the tag description here" pageEncoding="UTF-8"%>
<%@attribute required="true" rtexprvalue="true" name="orderlist" type="java.util.List"%>
<%@attribute rtexprvalue="true" name="extraValue" type="java.lang.Double" %>
<%@variable name-given="sum" scope="AT_BEGIN" variable-class="java.lang.Double" %>

<c:forEach items="${orderlist}" var="o">
    <c:set var="sum" value="${o.price * o.quantity + sum}" />
</c:forEach>
<c:if test='${extraValue != null}'>
    <c:set var='sum' value="${sum + extraValue}" />
</c:if>
<fmt:formatNumber maxFractionDigits="2" type="number" value="${sum}" />