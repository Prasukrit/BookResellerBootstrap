<%-- 
    Document   : EditBook
    Created on : Apr 16, 2015, 3:26:18 PM
    Author     : Gift
--%>

<%@page import="project.bookreseller.model.Category"%>
<%@page import="java.util.List"%>
<%@page import="project.bookreseller.model.Book"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=TIS-620">
        <title>Edit or add Book</title>
    </head>
    <body>
        <h1>EDIT BOOK OR ADD</h1>
        <br>
        <jsp:include page="searchBookForEdit.jsp" flush="true"/>
        <hr>
        <%List<Book> ListBook = (List<Book>)request.getAttribute("ListBook");
            if(ListBook!=null){%>
        <table class="table-striped">
            <tr><th>ISBN</th><th>authorName</th>
                <th>publisherName</th><th>title</th><th>language</th>
                <th>categoryName</th><th>paper</th><th>status</th>
                <th>pagenum</th><th>price</th></tr>
            
            <%for(Book b:ListBook){ %>
            <tr>
                <td><%=b.getISBN()%></td>
                <td><%=b.getAuthorName()%></td>
                <td><%=b.getPublisherName()%></td>
                <td><%=b.getTitle()%></td>
                <td><%=b.getLanguage()%></td>
                <td><%=Category.getCategoryName(b.getCategoryName())%></td>
                <td><%=b.getPaper()%></td>
                <td><%=b.getStatus()%></td>
                <td><%=b.getPagenum()%></td>
                <td><%=b.getPrice()%></td>
                <%request.setAttribute("Book", b);%>
                <td><a href="SendDataForEdit?isbn=<%=b.getISBN()%>">Edit</a></td>

            </tr>
            <%}%>
        </table>
        <hr>
        <%}%>
        
        <% String message = (String)request.getAttribute("message");
            if(message==null){
                message="";
    }%>
        <%=message%>



    </body>
</html>
