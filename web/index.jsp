<%-- 
    Document   : index
    Created on : Apr 12, 2015, 3:11:57 PM
    Author     : Aratto
--%>

<%@page contentType="text/html" pageEncoding="TIS-620"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Home</title>
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
    </style>
    <!--Ajax Script-->
    <script type="text/javascript" src="javascript/AjaxFunction.js"></script>
</head>
<body onload="loadBook();loadCategory()">
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
                        <ol class="breadcrumb" style="  height: 50px;">
                            <li >
                                <a href="#">หน้าหลัก</a>
                            </li>
                            <li class="active">
                                <a href="#">สินค้า</a>
                            </li>
                            <div class="btn-group" style="float:right">
                                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                    เรียงลำดับ
                                    <span class="caret"></span>
                                </button>
                                <ul class="dropdown-menu" role="menu">
                                    <li>
                                        <a href="#">สินค้ายอดนิยม</a>
                                    </li>
                                    <li>
                                        <a href="#">สินค้ามาใหม่ล่าสุด</a>
                                    </li>
                                    <li>
                                        <a href="#">สินค้ามาใหม่ 7 วันล่าสุด</a>
                                    </li>
                                    <li>
                                        <a href="#">เรียงตาม 0-9,A-Z,ก-ฮ</a>
                                    </li>
                                    <li>
                                        <a href="#">เรียงตาม 0-9,A-Z,ก-ฮ</a>
                                    </li>
                                    <li>
                                        <a href="#">ราคาน้อยไปมาก</a>
                                    </li>
                                    <li>
                                        <a href="#">ราคามากไปน้อย</a>
                                    </li>
                                </ul>
                            </div>
                        </ol>
                    </div>
                </div>

                <!--Product1-->
                <div id="content">
                    
                </div>
                <!--Product3-->
                <!--page button-->
                <div class="col-md-offset-4 col-md-6">
                    <nav>
                        <ul class="pagination">
                            <li class="disabled">
                                <a href="#" aria-label="Previous">
                                    <span aria-hidden="true">&laquo;</span>
                                </a>
                            </li>
                            <li class="active">
                                <a href="#">1</a>
                            </li>
                            <li>
                                <a href="#">2</a>
                            </li>
                            <li>
                                <a href="#">3</a>
                            </li>
                            <li>
                                <a href="#">4</a>
                            </li>
                            <li>
                                <a href="#">5</a>
                            </li>
                            <li>
                                <a href="#" aria-label="Next">
                                    <span aria-hidden="true">&raquo;</span>
                                </a>
                            </li>
                        </ul>
                    </nav>
                </div>
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
