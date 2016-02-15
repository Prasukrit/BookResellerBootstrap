<%-- 
    Document   : orderdetail
    Created on : Apr 21, 2015, 11:16:35 PM
    Author     : Aratto
--%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="util" tagdir="/WEB-INF/tags/" %>
<%@tag description="put the tag description here" pageEncoding="UTF-8" body-content="empty"%>
<%@attribute name="rec" required="true" rtexprvalue="true" type="project.bookreseller.model.Receipt" %>
<!--OrderSummary-->
 <div id="product-summary" class="row">
        <div class="col-md-4 text-right col-md-offset-2">
            <strong> วันที่สั่งซื้อสินค้า :</strong><br>
            <strong> รหัสการสั่งซื้อ (Receipt ID) :</strong><br>
            <strong> ยอดเงินรวม :</strong><br>
            <strong> สถานะการชำระเงิน :</strong><br>
        </div>
        <div class="col-md-3  text-left " >
            <fmt:formatDate pattern="dd/MM/yyyy" value="${rec.checkoutTime}" /> <br>
            ${rec.receiptId} <br>
            ${rec.total} บาท <br>
            <mark>รอการชำระเงิน</mark><br>
        </div>
 </div>
<!--ProductList-->
<div style="padding-top:30px;" >
    <h5><strong><u>รายการสินค้า</u></strong></h5>
    <table class="table table-striped">
        <tr>
            <th class="text-center">Item ID(s)</th>
            <th class="text-center">Item(s)</th>
            <th class="text-center">Qty</th>
            <th class="text-center">Price/Unit</th>
            <th class="text-center">Total</th>
        </tr>
        <util:loadfinalitem orderlist="${rec.orders}" />
     </table>
</div>
 <br>
 <!--Total-->
 <h5><strong><u>สรุปรายการสินค้า</u></strong></h5>
    <div id="product-summary" class="row">
        <div class="col-md-3 text-right">
            <strong> ราคารวมสินค้า :</strong><br>
            <strong> วิธีการจัดส่ง :</strong><br>
            <strong> ราคารวมทั้งหมด :</strong><br>
        </div>
        <div class="col-md-3  text-right " >
            <util:sumPrice orderlist="${rec.orders}" /> บาท </br>
            ${rec.shipName} ${rec.shipPrice} บาท </br>
            <util:sumPrice orderlist="${rec.orders}" extraValue="${rec.shipPrice}" /> บาท </br>
        </div>

    </div>
    <br>
    <!--/Total-->
<!--ShippingAddress-->
 <h5><strong><u>ที่อยู่ในการจัดส่งสินค้า</u></strong></h5>
    <span class="col-md-offset-1">${rec.reName} ${rec.reSurname} ${rec.address} ${rec.city} ${rec.zip}</span>
  <br>