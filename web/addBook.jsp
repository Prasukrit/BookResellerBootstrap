<%-- 
    Document   : addBook
    Created on : Apr 14, 2015, 8:32:05 PM
    Author     : Gift
--%>
<%@page import="project.bookreseller.model.Paper"%>
<%@page import="project.bookreseller.model.Book"%>
<%@page import="project.bookreseller.model.Publisher"%>
<%@page import="project.bookreseller.model.Language"%>
<%@page import="project.bookreseller.model.Category"%>
<%@page import="java.util.List"%>
<%@page import="project.bookreseller.model.Author"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=TIS-620">
        <title>Add book</title>
    </head>
    <body>
        <% String message = (String)request.getAttribute("message");
            if(message==null){
                message="";
            }
        %>
        <h1>Add book</h1>
        <form action="AddBook" method="post">
            ISBN: <input type="text" name="isbn" required>   <br>
            Title: <input type="text" name="title" required><br>
            PageNum: 
            <input type="number" name="pagenum" min="0" required>  
            <br>
            
            <%List<Category> categorys = Category.getAllCategory();%>
            Category:
            <select class="form-control" name="category" required>
                <%for(Category c:categorys){%>
                <option><%=c.getName()%></option>
                <%}%>
            </select>
            <br>
            
            <% List<Author> authors = Author.findByName("");%>
            Author Name: 
            <input list="authorName" name="authorName" required>
            <datalist id="authorName">
                <%for(Author a:authors){%>
                <option value="<%=a.getName()%>">
                <%}%>
            </datalist>
            <a href="addAuthor.jsp">Add author</a>
            <br>
            
            <%List<Publisher> publishers = Publisher.searchByName("");%>
            Publisher Name: 
            <input list="publisherName" name="publisherName" required>
            <datalist id="publisherName">
                <%for(Publisher p: publishers){%>
                <option value="<%=p.getName()%>">
                <%}%>
            </datalist>
            <a href="addPublisher.jsp">Add publisher</a>
            <br>
            
            <%List<Language> languages = Language.getAllLanguages();%>
            Language: 
            <select class="form-control" name="language" required>
                <%for(Language l: languages){%>
                <option><%=l.getLanguages()%></option>
                <%}%>
            </select>
            <br>       
            Price:<input type="number" name="price" step="0.01" min="0.0" required><br>
            Stock: <input type="number" name="stock" min="1" required>
            <br>
            FullDescription:<textarea name="fullDes" required></textarea>
            <br>
            
            
            BriefDescription: <textarea name="B_Description" onclick="this.setSelectionRange(0, this.value.length)" ></textarea><br>
            Width:<input type="number" name="width" step="0.01" min="0.0" ><br>
            Height:<input type="number" name="height" step="0.01" min="0.0"  ><br>
            Depth:<input type="number" name="depth" step="0.01" min="0.0" ><br>
            ExtensionDescription: <textarea name="E_Description"  onclick="this.setSelectionRange(0, this.value.length)"></textarea><br>
            Status:
            <select class="form-control" name="status" required>
                <option>Available</option>
                <option>Unavailatble</option>
                <option>Out of Stock</option>
            </select>
            <br>
                       <%List<Paper> papers = Paper.getAllPaperTypeName();%>
            Paper: 
            <select class="form-control" name="paperName">
                <option>none</option>
                <%for (Paper p : papers) {%>
                <option><%=p.getPaperName()%></option>
                <%}%>
            </select>
            <br>
            <input type="submit" name="addBook">
                
        </form>
                <font color="red">    <%=message%> </font>
                <hr>
                <a href="ListEditPage.jsp"> <-Back</a>
    </body>
</html>