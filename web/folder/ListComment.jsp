<%-- 
    Document   : ListComment
    Created on : Apr 18, 2015, 10:06:29 PM
    Author     : Gift
--%>

<%@page import="project.bookreseller.model.Comment"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="TIS-620"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=TIS-620">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Check Comment</h1>
        <jsp:include page="SearchForComment.jsp" flush="true"/>
        <hr>
        <%
        List<Comment> comments = (List<Comment>)request.getAttribute("comments");
        %>
        <table class="table-striped">
            <tr><th>Comment Id</th><th>Comment word</th><th>Rate</th><th>Date</th>
                <th>ISBN</th><th>Title</th>
            </tr>
            <%for(Comment c:comments){%>
            <tr>
                <td><%=c.getId()%></td>
                <td><%=c.getWord()%></td>
                <td><%=c.getRate()%></td>
                <td><%=c.getAddDate()%></td>
            </tr>
            
        </table>
        
        
        
    </body>
</html>
