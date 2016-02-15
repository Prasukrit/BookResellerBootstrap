<%@page import="project.bookreseller.model.Book"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page pageEncoding="UTF-8" %>

<!--Content-->
<div class=" panel panel-default col-md-12">
    <h2>${book.getTitle()}</h2>
    <hr>

    <!--Book content-->
    <div class="panel-body" style="padding-top:30px;">
        <div class="col-sd-4 col-md-3">
            <a href="#" class="thumbnail" >
                <img src="image/book.png" alt="Product">
            </a>
            <a href="addProduct?ISBN=${book.getISBN()}">
                <button type="button" class="btn btn-primary" style="width:100%">Add to cart</button>
            </a>
        </div>
        <div class="col-sd-8 col-md-9">
            <h3><fmt:formatNumber type="number" maxFractionDigits="2" minFractionDigits="2" value="${book.getPrice()}" /> Baht</h3>

            <h3>รายละเอียด</h3>
            <table>
                <tr>
                    <td>ISBN</td>
                    <td>${book.getISBN()}</td>
                </tr>
                <tr>
                    <td>จำนวนหน้า</td>
                    <td>${book.getPagenum()}</td>
                </tr>
            <c:if test="${book.getHeight() != null && book.getWidth() != null && book.getDepth() != null}">
                <tr>
                    <td>ขนาดรูปเล่ม</td>
                    <td>${book.getHeight()} x ${book.getWidth()} x ${book.getDepth()} มม.</td>
                </tr>
            </c:if>
            <c:if test="${book.getPaper() != null}">
                <tr>
                    <td>ชนิดกระดาษ</td>
                    <td>${book.getPaper()}</td>
                </tr>
            </c:if>
                <tr>
                    <td>สำนักพิมพ์</td>
                    <td>${book.getPublisherName()}</td>
                </tr>
            </table>
            <h3>เนื้อหา</h3>
            <div>
                ${book.getF_description()}
            </div>
        </div>
    </div>
    <!--/Book content-->
    <!--Comment-->
    <div class="panel-body ">
        <div>
            <h3>บทวิจารณ์</h3>
            <hr></div>
        <form action="sendComment" method="post">
            <div class="box-padding col-md-3">

                <p class="lead">ระดับคุณภาพ</p>
                <div class="radio">
                    <label>
                        <input type="radio" name="ratingcode" id="optionsRadios5" value="option5" checked>ดีเยี่ยม</label>
                </div>
                <div class="radio">
                    <label>
                        <input type="radio" name="ratingcode" id="optionsRadios4" value="option4">ดี</label>
                </div>
                <div class="radio">
                    <label>
                        <input type="radio" name="ratingcode" id="optionsRadios3" value="option3">ปานกลาง</label>
                </div>
                <div class="radio">
                    <label>
                        <input type="radio" name="ratingcode" id="optionsRadios2" value="option2">พอใช้</label>
                </div>
                <div class="radio">
                    <label>
                        <input type="radio" name="ratingcode" id="optionsRadios1" value="option1">ปรับปรุง</label>
                </div>
            </div>
            <div class="box-padding col-md-7 ">
                <label>
                    รายระเอียด
                    <textarea class="form-control" rows="3" name="desReview" id="desReview" placeholder="รายละเอียดบทวิจารณ์"></textarea>
                </label>
                <br>
                <input class="btn btn-default" type="submit" value="ส่งบทวิจารณ์">
            </div>
        </form>
    </div>
    <!--/Comment-->
    <!--Review-->
    <div class="panel-body">
        <div>
            <h3>ความคิดเห็น(0)</h3>
            <hr>
        </div>
        <!--Box comment-->
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">ความเห็นที่ 1</h3>
            </div>
            <div class="panel-body">
                สนุกจุงเบยยยยยยยยย
                ยิ้ม
                สนุก
            </div>
            <div class="panel-footer">จากผู้ใช้ : <a href="">หมีแพนด้า</a> โพสเมื่อ : 12/05/2015 เวลา : 1.18 </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">ความเห็นที่ 2</h3>
            </div>
            <div class="panel-body">
                สนุกจุงเบยยยยยยยยย
                ยิ้ม
                สนุก
            </div>
            <div class="panel-footer">จากผู้ใช้ : <a href="">หมีแพนด้า</a> โพสเมื่อ : 12/05/2015 เวลา : 1.18 </div>
        </div>
        <!--/Box comment-->
        
    </div>
    <!--/Review--> 
</div>
<!--Content-->




