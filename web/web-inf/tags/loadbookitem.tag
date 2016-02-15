<%-- 
    Document   : loadbookitem
    Created on : Apr 19, 2015, 12:14:01 PM
    Author     : Aratto
--%>

<%@taglib prefix="util" tagdir="/WEB-INF/tags/" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@tag description="put the tag description here" pageEncoding="UTF-8" body-content="empty" %>
<%@attribute name="booklist" rtexprvalue="true" type="java.util.List" required="true" %>
<c:set var="count" value="0" scope="page" />

<c:forEach items="${booklist}" var="bl">
    <c:if test="${count%4 == 0}">
        <div class="row">
    </c:if>
    <div class="col-sm-6 col-md-3">
    <div class="thumbnail">
        <a href="<util:createEncodeURL link="LoadBookDescription?ISBN=${bl.ISBN}"/>"><img src="http://www.i2symbol.com/images/abc-123/0/empty_set_u2205_icon_256x256.png" alt="Item"></a>
        <div class="caption">
            <p class="lead">
                <a href="<util:createEncodeURL link="LoadBookDescription?ISBN=${bl.ISBN}"/>" style="text-decoration:none" >${bl.getTitle()}</a>
            </p>
            <p class="lead" style="color:red;"><fmt:formatNumber type="number" maxFractionDigits="2" minFractionDigits="2" value="${bl.getPrice()}" /> baht</p>
        </div> 
        <div class="panel-footer">
            <a href="#" onclick="addCart('${bl.ISBN}')" class="btn btn-primary" role="button">สั่งซื้อ</a>
        </div>
    </div>
    </div>
    <c:if test="${count%4 == 3}">
        </div>
    </c:if>
    <c:set var="count" value="${count + 1}" scope="page"/>  
</c:forEach>
<c:if test="${count%4 != 2}">
    </div>
</c:if>