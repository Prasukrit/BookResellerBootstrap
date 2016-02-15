<%-- 
    Document   : navbar
    Created on : Apr 7, 2015, 10:23:22 PM
    Author     : Aratto
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <div class="navbar-header">
                    <a class="navbar-brand" href="#">
                        <img alt="Brand" width="20" height="20" src="http://dai-projects.googlecode.com/svn/tags/6/Resource/book-icon.png"></a>
                    <a class="navbar-brand" href="#">Book store</a>
                </div>

            </div>
            <div id="navbar" class="collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li class="active">
                        <a href="#">Home</a>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                            Categories
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu" role="menu">
                            <li>
                                <a href="">สินค้าทั้งหมด</a>
                            </li>
                            <li>
                                <a href="">สินค้าใหม่</a>
                            </li>
                            <li class="divider"></li>
                            <li >
                                <a>สินค้าขายดี</a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="">สินค้าขายดีรายวัน</a>
                            </li>
                            <li>
                                <a href="">สินค้าขายดี 7 วัน</a>
                            </li>
                            <li class="divider"></li>
                            <li >
                                <a href="">หนังสือ</a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="">การ์ตูน</a>
                            </li>
                            <li>
                                <a href="">กีฬา</a>
                            </li>
                            <li>
                                <a href="">สุขภาพ</a>
                            </li>
                            <li>
                                <a href="">นวนิยาย</a>
                            </li>
                            <li>
                                <a href="">ท่องเที่ยว</a>
                            </li>
                            <li>
                                <a href="">การศึกษา</a>
                            </li>
                            <li>
                                <a href="">คอมพิวเตอร์</a>
                            </li>
                            <li>
                                <a href="">ภาษาต่างประเทศ</a>
                            </li>

                        </ul>
                    </li>

                    <li>
                        <a href="#about">How to order</a>
                    </li>
                    <li>
                        <a href="#about">Payment</a>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                            About
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu" role="menu">
                            <li>
                                <a href="#">About us</a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">Contact</a>
                            </li>

                        </ul>
                    </li>

                </ul>
                <!--Cart-->
                <jsp:include page="cart.jsp" flush="true" />
                <!--/Cart-->
                <!--Search-->
                <form class="navbar-form navbar-right ">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search for...">
                        <span class="input-group-btn">
                            <button class="btn btn-default" type="button">Go!</button>
                        </span>
                    </div>
                    <!-- /input-group --> </form>
                <!--/Search--> </div>
            <!--/.nav-collapse --> </div>

    </nav>