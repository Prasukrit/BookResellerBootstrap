<%-- 
    Document   : createSiteMap
    Created on : Apr 20, 2015, 8:40:18 AM
    Author     : Aratto
--%>
<%@taglib prefix="util" tagdir="/WEB-INF/tags/" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@tag description="create site map" pageEncoding="UTF-8"%>
<%@attribute name="siteMapItem" type="java.util.List" required="true" rtexprvalue="true"%>
<%@attribute name="linkSiteMap" required="true" rtexprvalue="true" type="java.util.List" %>
<c:set var="count" value="0" />
<c:set var="size" value="${siteMapItem.size()}" />

<c:forEach items="${siteMapItem}" var="smi">
    <c:if test="${count == size-1}">
        <li class="active">
    </c:if>
    <c:if test="${count != size-1}">
        <li>
    </c:if>
            <a href="<util:createEncodeURL link="${linkSiteMap[count]}" />">${smi}</a> 
    </li>
    <c:set var="count" value="${count+1}" />
</c:forEach>