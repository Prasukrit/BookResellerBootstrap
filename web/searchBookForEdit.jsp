<%-- 
    Document   : editBook
    Created on : Apr 16, 2015, 2:19:16 PM
    Author     : Gift
--%>
<%
    String oldWord = request.getParameter("findword"); 
    if (oldWord==null)
        oldWord = "";
    String oldType = request.getParameter("type");
%>


<form action="SearchBookForEdit" method="post">
    Find book for edit: 
    <input type="text" name="findword" value="<%=oldWord%>" onclick="this.setSelectionRange(0, this.value.length)"> BY
    <select name="type" >
        <% if(oldType!=null){ %>
        <option><%=oldType%></option>
        <%}%>
        <option>ISBN</option>
        <option>Title</option>
        <option>Category</option>
        <option>Author</option>
        <option>Publisher</option>
        <option>Status</option>
        <option>Language</option>
    </select>
    <input type="submit" name="search">  or <a href="addBook.jsp">Add book</a>
</form>
