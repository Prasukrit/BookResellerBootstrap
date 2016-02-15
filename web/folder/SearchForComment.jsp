<%-- 
    Document   : SearchForComment
    Created on : Apr 18, 2015, 9:33:02 PM
    Author     : Gift
--%>
<%
    String oldWord = request.getParameter("findword");
    if (oldWord == null) {
        oldWord = "";
    }
    String oldType = request.getParameter("type");
%>
<form action="SearchCommentForAdmin" method="post">
    Find List of comments: 
    <input type="text" name="findword" value="<%=oldWord%>" onclick="this.setSelectionRange(0, this.value.length)"> BY
    <select name="type" >
        <% if (oldType != null) {%>
        <option><%=oldType%></option>
        <%}%>
        <option>Recently</option>
        <option>ISBN</option>
        <option>Title</option>
        <option>Member's name</option>
    </select>
    <input type="submit" name="search">
</form>
