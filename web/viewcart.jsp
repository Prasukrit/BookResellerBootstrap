<%-- 
    Document   : viewCart
    Created on : Apr 12, 2015, 3:12:13 PM
    Author     : Aratto
--%>

<%@page contentType="text/html" pageEncoding="TIS-620"%>
<!DOCTYPE html>
<html>
<head>
    <title>Cart</title>
    <meta charset="utf-8">
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" type="text/css" href="css/customize.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Optional theme -->

    <link rel="stylesheet" href="css/bootstrap-theme.min.css">
    <link rel="stylesheet" type="text/css" href="css/sticky-footer.css">
    <link rel="stylesheet" type="text/css" href="css/cart.css">
    <!-- Latest compiled and minified JavaScript -->
    <script type="text/javascript" src="js/jquery-2.1.3.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!--Dropdown-->
    <script type="text/javascript"></script>
    <style type="text/css">
        .jumbotron{
            background: url("image/bg.png");
        }
        table{
            text-align: center;
        }
        .remove{
            width: 30px;
            height: 30px;
        }
        table tr td img{
            width: 80px;
            height: 80px;
        }
    </style>
    <!--Ajax Function-->
    <script type="text/javascript" src="javascript/AjaxFunction.js" ></script>
</head>
<body onload="loadCategory()">
    <!--NAV-->
        <jsp:include page="component/navbar.jsp" flush="true" />
    <!--Promo-->
    <div class="jumbotron" >
        <div class="container">
            <h1>Book shopping</h1>
            <p>โปรโมชั่นลดกระหน่ำช่วงสงกรานต์ 13-15 เมษายน เท่านั้น!!</p>
        </div>
    </div>
    <!--Container-->
    <div class="container box-shadow" style="background-color: #eee;padding-top:20px;">
        <div class="row">
            <!--Left-->
            <div class="col-md-3 box-padding">
                <!--Login-->
                <c:choose>
                    <c:when test="${username != null}">
                        <jsp:include page="component/loginpartold.jsp" flush="true" />
                    </c:when>
                    <c:when test="${username == null}">
                        <jsp:include page="component/loginpartnew.jsp" flush="true" />
                    </c:when>
                </c:choose>
                <!--/Login-->

                <!--Category-->
                <h2>Category</h2>
                <hr>
                <div class="nav nav-pills nav-stacked" id="category">
                </div>
            </div>
            <!--Left-->
            <!--Right-->
            <div class="col-md-9 masthead">
                <!--Sitemap-->
                <div class="panel panel-default">
                    <div class="panel-body">
                        <ol class="breadcrumb">
                            <li>
                                <a href="#">หน้าหลัก</a>
                            </li>
                            <li class="active">
                                <a href="#">ตระกร้าสินค้า</a>
                            </li>
                        </ol>

                    </div>
                </div>
                <!--Content-->
                <form action="SaveCart" method="post" >
                    <div class=" panel panel-default col-md-12">
                        <h2>Cart ตระกร้าสินค้า</h2>
                        <hr>
                        <div class="panel-body col-md-offset-1 col-md-10 col-md-offset-1 " style="padding-top:30px;">
                            <table class="table table-striped">
                                <tr>
                                    <th>Item(s)</th>
                                    <th>Item image</th>
                                    <th>Qty</th>
                                    <th>Price</th>
                                    <th>Remove</th>
                                    <th>Total</th>
                                </tr>
                                ${carttable}
                                <!--Total-->
                                ${total}
                                <!--/Total--> </table>
                                <div class="col-md-offset-2 col-md-8">
                            <a href="./" >
                                <button type="button" class="btn btn-primary">Continue shop</button>
                            </a>
                            <a href="#" >
                                <button type="submit" class="btn btn-warning">Save cart</button>
                            </a>
                            <a href="ClearCart" >
                                <button type="button" class="btn btn-danger">Clear list</button>
                            </a>
                            <a href="Checkout" >
                                <button type="button" class="btn btn-success">Checkout</button>
                            </a>
                            </div>
                        </div>
                    </div>
                </form>
                <!--Content-->
                <!--page button--> </div>
        </div>
    </div>
    <!--/container-->
    <!--Footer-->
    <footer class="footer">
        <div class="container">
            <p class="text-muted">Place sticky footer content here.</p>
        </div>
    </footer>
    <!--Foooter-->

</body>
</html>