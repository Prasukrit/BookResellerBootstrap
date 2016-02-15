<%-- 
    Document   : createreceiptlist
    Created on : Apr 21, 2015, 4:25:29 PM
    Author     : Aratto
--%>
<%@taglib prefix="util" tagdir="/WEB-INF/tags/" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@tag description="put the tag description here" pageEncoding="UTF-8"%>
<%@attribute name="receiptlist" required="true" rtexprvalue="true" type="java.util.List" %>

<c:forEach items="${receiptlist}" var="rl">
    <tr>
        <td><a href="<util:createEncodeURL link="ShowConfirmPage?receiptid=${rl.receiptId}"/>">${rl.receiptId}</a></td>
        <td><fmt:formatDate pattern="dd/MM/yyyy" value="${rl.checkoutTime}" /></td>
        <td>${rl.status}</td>
    </tr>
</c:forEach>
