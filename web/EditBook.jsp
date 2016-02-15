<%-- 
    Document   : EditBook
    Created on : Apr 16, 2015, 4:23:08ท PM
    Author     : Gift
--%>

<%@page import="project.bookreseller.model.Paper"%>
<%@page import="project.bookreseller.model.Language"%>
<%@page import="project.bookreseller.model.Publisher"%>
<%@page import="project.bookreseller.model.Author"%>
<%@page import="project.bookreseller.model.Category"%>
<%@page import="java.util.List"%>
<%@page import="project.bookreseller.model.Book"%>
<%@page contentType="text/html" pageEncoding="TIS-620"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=TIS-620">
        <title>Edit Book</title>
    </head>
    <body>
        
        <% Book bo = (Book) request.getAttribute("oldBook");%>
        <h1>Edit Book </h1>
        
        <form action="EditBook?oldISBN=<%=bo.getISBN()%>" method="post">
            ISBN: <input type="text" name="newISBN" value="<%=bo.getISBN()%>" onclick="this.setSelectionRange(0, this.value.length)" required> <br>

            <% List<Author> authors = Author.findByName("");%>
            Author Name: 
            <input list="authorName" name="authorName" value="<%=bo.getAuthorName()%>" onclick="this.setSelectionRange(0, this.value.length)" required>
            <datalist id="authorName">
                <%for (Author a : authors) {%>
                <option value="<%=a.getName()%>">
                    <%}%>
            </datalist>
            <br>

            <%List<Publisher> publishers = Publisher.searchByName("");%>
            Publisher Name: 
            <input list="publisherName" name="publisherName" value="<%=bo.getPublisherName()%>" 
                   onclick="this.setSelectionRange(0, this.value.length)" required>
            <datalist id="publisherName">
                <%for (Publisher p : publishers) {%>
                <option value="<%=p.getName()%>">
                    <%}%>
            </datalist>
            <br>

            <%List<Language> languages = Language.getAllLanguages();%>
            Language: 
            <select class="form-control" name="language" required >
                <option><%=bo.getLanguage()%></option>
                <%for (Language l : languages) {%>
                <option><%=l.getLanguages()%></option>
                <%}%>
            </select>
            <br>

            <%List<Category> categorys = Category.getAllCategory();%>
            Category:
            <select class="form-control" name="category" required >
                <option><%=Category.getCategoryName(bo.getCategoryName())%></option>
                <%for (Category c : categorys) {%>
                <option><%=c.getName()%></option>
                <%}%>
            </select>
            <br>

            <%List<Paper> papers = Paper.getAllPaperTypeName();%>
            Paper: 
            <select class="form-control" name="paperName">
                <option><%=bo.getPaper()%></option>
                <%for (Paper p : papers) {%>
                <option><%=p.getPaperName()%></option>
                <%}%>
            </select>
            <br>

            Status:
            <select class="form-control" name="status" required>
                <option><%=bo.getStatus()%></option>
                <option>Available</option>
                <option>Unavailatble</option>
                <option>Out of Stock</option>
            </select>
            <br>


            Title: <input type="text" name="title"  value="<%=bo.getTitle()%>" onclick="this.setSelectionRange(0, this.value.length)" required><br>
            BriefDescription: <textarea name="B_Description" onclick="this.setSelectionRange(0, this.value.length)" ><%=bo.getB_description()%></textarea><br>
            Price:<input type="number" name="price" step="0.01" min="0.0" value="<%=bo.getPrice()%>" required><br>
            Width:<input type="number" name="width" step="0.01" min="0.0" value="<%=bo.getWidth()%>" ><br>
            Height:<input type="number" name="height" step="0.01" min="0.0" value="<%=bo.getHeight()%>" ><br>
            Depth:<input type="number" name="depth" step="0.01" min="0.0" value="<%=bo.getDepth()%>" ><br>
            ExtensionDescription: <textarea name="E_Description"  onclick="this.setSelectionRange(0, this.value.length)"><%=bo.getE_description()%></textarea><br>
            PageNum:<input type="number" name="pagenum" min="0" value="<%=bo.getPagenum()%>" required>  <br>
            Stock:<input type="number" name="stock" min="0" value="<%=Book.getStock(bo.getISBN())%>" required> <br>
            Full Description: <textarea name="F_Description"  onclick="this.setSelectionRange(0, this.value.length)" required><%=bo.getF_description()%></textarea><br>

            <input type="submit" value="Edit">
        </form>
            <a href="ShowEditPage.jsp"><-Back</a>
            <%=request.getAttribute("message")%>
    </body>
</html>
