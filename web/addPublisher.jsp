<%-- 
    Document   : addPublisher
    Created on : Apr 15, 2015, 8:28:18 PM
    Author     : Gift
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<br>
<br>
<h1>Add Publisher</h1>
<form action="AddPublisher" method="post">
    PublisherName: <input type="text" name="publisherName" required><br>
    Address: <textarea name="address" required></textarea> <br>
    Phone: <input type="text" name="phone"><br>
    Fax: <input type="text" name="fax"><br>
    Email: <input type="email" name="email"><br>
    Website: <input type="url" name="website"><br>
    <input type="submit" value="AddPublisher">
</form>
<a href="addBook.jsp">Cancel</a>

