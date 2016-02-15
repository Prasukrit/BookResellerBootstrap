<%-- 
    Document   : createnavpage
    Created on : Apr 19, 2015, 8:14:04 PM
    Author     : Aratto
--%>

<%@tag description="create page nav bar" pageEncoding="UTF-8" body-content="empty"%>
<%@attribute name="currentpage" required="true" rtexprvalue="true" type="java.lang.Integer" %>
<%@attribute name="pagenum" required="true" rtexprvalue="true" type="java.lang.Integer" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="count" value="1" scope="page"/> 

<c:forEach begin="1" end="${pagenum}">
    <c:if test="${count == currentpage}">
        <li class="active">
    </c:if>
    <c:if test="${count != currentpage}">
        <li>
    </c:if>
        <a href="#" id="pagenav${count}">${count}</a>
    </li>
    <c:set var="count" value="${count+1}" />
</c:forEach>
