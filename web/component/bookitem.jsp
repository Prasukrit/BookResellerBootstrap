<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page pageEncoding="UTF-8" %>
<div class="col-sm-6 col-md-3">
    <div class="thumbnail">
        <img onclick="loadBookDescription('${book.getISBN()}')" src="http://www.i2symbol.com/images/abc-123/0/empty_set_u2205_icon_256x256.png" alt="Item">
        <div class="caption">
            <p class="lead">
                <a href="#" style="text-decoration:none" onclick="loadBookDescription('${book.getISBN()}')">${book.getTitle()}</a>
            </p>
            <p class="lead" style="color:red;"><fmt:formatNumber type="number" maxFractionDigits="2" minFractionDigits="2" value="${book.getPrice()}" /> baht</p>
        </div> 
        <div class="panel-footer">
            <a href="addProduct?ISBN=${book.getISBN()}" class="btn btn-primary" role="button">สั่งซื้อ</a>
        </div>
    </div>
</div>