<%-- 
    Document   : createEncodeURL
    Created on : Apr 20, 2015, 1:33:24 PM
    Author     : Aratto
--%>

<%@tag description="Encode URL" pageEncoding="UTF-8" body-content="empty"%>
<%@attribute name="link" rtexprvalue="true" required="true" type="java.lang.String" %>

<%= response.encodeURL(link) %>
