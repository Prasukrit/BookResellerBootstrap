<%-- 
    Document   : concatURL
    Created on : Apr 19, 2015, 3:16:52 PM
    Author     : Aratto
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@tag description="put the tag description here" pageEncoding="UTF-8"%>
<%@attribute name="url" required="true" type="java.lang.String" rtexprvalue="true"%>
<%@attribute name="concat" required="true" type="java.lang.String" rtexprvalue="true" %>
<%@variable name-given="result" scope="AT_BEGIN" variable-class="java.lang.String" %>
<c:out value="${url}${concat}" />