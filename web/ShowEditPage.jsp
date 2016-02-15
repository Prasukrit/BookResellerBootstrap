<%-- 
    Document   : ShowEditPage
    Created on : Apr 17, 2015, 12:42:01 PM
    Author     : Gift
--%>

<%@page import="project.bookreseller.model.Category"%>
<%@page import="project.bookreseller.model.Book"%>
<%@page contentType="text/html" pageEncoding="TIS-620"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=TIS-620">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>EDIT BOOK OR ADD</h1>
        <br>
        <jsp:include page="searchBookForEdit.jsp" flush="true"/>
        <hr>
        <%Book b = (Book)request.getAttribute("Book");
            if(b!=null){%>
        <table >
            <tr><td align=right>ISBN : </td><td><%=b.getISBN()%></td></tr>
            <tr><td align=right>authorName: </td><td><%=b.getAuthorName()%></td></tr>
            <tr><td align=right>publisherName: </td><td><%=b.getPublisherName()%></td></tr>
            <tr><td align=right>title : </td><td><%=b.getTitle()%></td></tr>
            <tr><td align=right>language : </td><td><%=b.getLanguage()%></td></tr>
            <tr><td align=right>categoryName </td><td><%=Category.getCategoryName(b.getCategoryName())%></td></tr>
            <tr><td align=right>paper </td><td><%=b.getPaper()%></td></tr>
            <tr><td align=right>status : </td><td><%=b.getStatus()%></td></tr>
            <tr><td align=right>pagenum </td><td><%=b.getPagenum()%></td></tr>
            <tr><td align=right>price : </td><td><%=b.getPrice()%></td></tr>
            <td><a href="SendDataForEdit?isbn=<%=b.getISBN()%>">Edit</a></td>

        </table>
        <hr>
        <%}%>
    
    </body>
</html>
