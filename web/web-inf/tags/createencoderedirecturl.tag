<%-- 
    Document   : createencoderedirecturl
    Created on : Apr 20, 2015, 1:36:18 PM
    Author     : Aratto
--%>

<%@tag description="Encode redirect URL" pageEncoding="UTF-8"%>
<%@attribute name="link" rtexprvalue="true" required="true" type="java.lang.String" %>
<%= response.encodeRedirectURL(link) %>