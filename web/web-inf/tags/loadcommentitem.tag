<%-- 
    Document   : loadcommentitem
    Created on : Apr 18, 2015, 9:40:52 PM
    Author     : Aratto
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@tag description="Load comment item" pageEncoding="UTF-8" body-content="empty"%>
<%@attribute rtexprvalue="true" required="true" name="commentList" type="java.util.List" %>
<c:set var="count" value="1" scope="page" />

<div>
    <h3>ความคิดเห็น(${commentList.size()})</h3>
    <hr>
</div>
<c:forEach items="${commentList}" var="cl" >
<!--Box comment-->
<div class="panel panel-default">
    <div class="panel-heading">
        <h3 class="panel-title">ความเห็นที่ ${count}</h3>
    </div>
    <div class="panel-body">
        ${cl.word}
    </div>
        <div class="panel-footer">จากผู้ใช้ : ${cl.member.userName} โพสเมื่อ : <fmt:formatDate pattern="dd/MM/yyyy" value="${cl.addDate}" /> เวลา : <fmt:formatDate pattern="HH:mm" value="${cl.addDate}" /> </div>
</div>
<c:set var="count" value="${count + 1}" scope="page"/>
</c:forEach>
