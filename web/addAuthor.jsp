<%-- 
    Document   : addAuthor
    Created on : Apr 15, 2015, 2:47:26 PM
    Author     : Gift
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<br>
<br>
<h1>Add author</h1>
<form action="AddAuthorServlet" method="post">
    AuthorName: <input type="text" name="authorName" required><br>
        <label for="">SEX:</label>
        <div class="form-group">
        Male  <input name="sex" type="radio" id="male" value="M" checked>
        Female  <input name="sex" type="radio" id="female" value="F">
        </div>
    <input type="submit" value="Add">
</form>
<a href="addBook.jsp">Cancel</a>

        

