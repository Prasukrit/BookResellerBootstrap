<%-- 
    Document   : editProfile
    Created on : Apr 14, 2015, 4:53:32 PM
    Author     : Gift
--%>

<%@taglib prefix="util" tagdir="/WEB-INF/tags/" %>
<%@page import="project.bookreseller.model.Member"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="member" scope="request" class="project.bookreseller.model.Member"/>
<!DOCTYPE html>
<html>
    <head>
        <title>Edit Profile</title>
        <meta charset="utf-8" />
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
    <body onload="loadCategory()">
        <!--NAV-->
        <jsp:include page="component/navbar.jsp" flush="true" />
        <!--Promo-->
        <div class="jumbotron" >
            <div class="container">
                <h1>Book shopping</h1>
                <p>
                    โปรโมชั่นลดกระหน่ำช่วงสงกรานต์ 13-15 เมษายน เท่านั้น!!
                </p>
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
                                <li><a href="<util:createEncodeURL link="#" />">หน้าหลัก</a></li>
                                <li class="active">สมัครสมาชิก</li>
                            </ol>
                        </div>
                    </div>
                    <!--Edit-->
                    <div class=" panel panel-default col-md-12">
                        <div class="row">
                            <div class="col-md-offset-1 col-md-10">
                                <h3>Profile's Picture</h3>
                                <hr>
                                <div class="panel-body col-md-offset-3 col-md-5" style="padding-top:30px;">
                                    <form action="<util:createEncodeURL link="UploadMemberPicture"/>" method="post" enctype="multipart/form-data">
                                        <div class="form-group ">
                                            <input type="file" name="pic" />
                                        </div>
                                        <input type="submit" class="btn btn-default" value="Update">
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-offset-1 col-md-10">
                                <h3>Change Password</h3>
                                <hr>
                                <form action="<util:createEncodeURL link="ChangePassword"/>" method="post">
                                    <div class="panel-body col-md-offset-3 col-md-5" style="padding-top:30px;">
                                        <div class="form-group">
                                            <label style="color: red">${passwordmessage}</label><br>
                                            <label for="">รหัสผ่านเดิม</label>
                                            <input name="oldpassword" type="password" class="form-control" id="" placeholder="Password">
                                        </div>
                                        <div class="form-group">
                                            <label for="">รหัสผ่านใหม่</label>
                                            <input name="newpassword" type="password" class="form-control" id="" placeholder="Password">
                                        </div>
                                        <div class="form-group">
                                            <label for="">ยืนยันรหัสผ่านใหม่</label>
                                            <input name="confirmnewpassword" type="password" class="form-control" id="" placeholder="Password">
                                        </div>
                                        <input type="submit" class="btn btn-default" value="Update">
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-offset-1 col-md-10">
                                <h3>Email</h3>
                                <hr>
                                <div class="panel-body col-md-offset-3 col-md-5" style="padding-top:30px;">
                                    <form action="<util:createEncodeURL link="ChangeEmail"/>" method="post" >
                                        <div class="form-group ">
                                            <label style="color: red">${emailmessage}</label><br>
                                            <label for="exampleInputEmail1">อีเมล์เก่า</label>						
                                            <input name="oldemail" type="email" class="form-control" id="exampleInputEmail1"  value="${member.email}">
                                        </div>
                                        <div class="form-group ">
                                            <label for="exampleInputEmail1">อีเมล์ใหม่</label>						
                                            <input name="newemail" type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter new email" required>
                                        </div>
                                        <div class="form-group ">
                                            <label for="exampleInputEmail1">ยืนยันอีเมล์ใหม่</label>						
                                            <input name="confirmnewemail" type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter new email" required>
                                        </div>
                                        <input type="submit" class="btn btn-default" value="Update">
                                    </form>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-offset-1 col-md-10">
                                <h3>Personal Profile</h3>
                                <hr>
                                <div class="panel-body col-md-offset-3 col-md-5" style="padding-top:30px;">
                                    <form action="<util:createEncodeURL link="ChangeProfile" />" method="get" >
                                        <div class="form-group">
                                            <label for="">ชื่อ</label>
                                            <input name="name" type="text" class="form-control" id="fname" value="${member.name}">
                                        </div>
                                        <div class="form-group">
                                            <label for="">นามสกุล</label>
                                            <input name="surname" type="text" class="form-control" id="lname" value="${member.surname}">
                                        </div>
                                        <div class="form-group">
                                            <label for="">เพศ</label><br>
                                            <c:choose>
                                                <c:when test='${member.sex.equalsIgnoreCase("M")}'>
                                                    ชาย  <input name="sex" type="radio" id="male" value="M" checked>
                                                    หญิง  <input name="sex" type="radio" id="female" value="F">
                                                </c:when>
                                                <c:otherwise>
                                                    ชาย  <input name="sex" type="radio" id="male" value="M">
                                                    หญิง  <input name="sex" type="radio" id="female" value="F" checked>
                                                </c:otherwise>
                                            </c:choose>
                                        </div>
                                        <div class="form-group">
                                            <label for="">วันเกิด</label><br>
                                            <input name="birthday" type="date" class="form-control" id="dob" value="${member.birthDay}">
                                        </div>
                                        <div class="form-group">
                                            <label for="">เบอร์โทรศัพท์</label><br>
                                            <input name="phone" type="text" class="form-control" id="phone" value="${member.phone}">
                                        </div>
                                        <div class="form-group">
                                            <label for="">มือถือ</label><br>
                                            <input name="mobilephone" type="text" class="form-control" id="phone" value="${member.mobilePhone}">
                                        </div>
                                        <div class="form-group">
                                            <label for="">ที่อยู่</label><br>
                                            <textarea name="address" class="form-control" name="address">${member.address}</textarea>
                                        </div>
                                        <div class="form-group">
                                            <label for="">จังหวัด</label><br>
                                            <select class="form-control" name="city">
                                                <option>${member.city}</option>
                                                <option>กรุงเทพมหานคร</option>
                                                <option>กระบี่</option>
                                                <option>กาญจนบุรี</option>
                                                <option>กาฬสินธุ์</option>
                                                <option>กำแพงเพชร</option>
                                                <option>ขอนแก่น</option>
                                                <option>จันทบุรี</option>
                                                <option>ฉะเชิงเทรา</option>
                                                <option>ชลบุรี</option>
                                                <option>ชัยนาท</option>
                                                <option>ชัยภูมิ</option>
                                                <option>ชุมพร</option>
                                                <option>เชียงราย</option>
                                                <option>เชียงใหม่</option>
                                                <option>ตรัง</option>
                                                <option>ตราด</option>
                                                <option>ตาก</option>
                                                <option>นครนายก</option>
                                                <option>นครปฐม</option>
                                                <option>นครพนม</option>
                                                <option>นครราชสีมา</option>
                                                <option>นครศรีธรรมราช</option>
                                                <option>นครสวรรค์</option>
                                                <option>นนทบุรี</option>
                                                <option>นราธิวาส</option>
                                                <option>น่าน</option>
                                                <option>บึงกาฬ</option>
                                                <option>บุรีรัมย์</option>
                                                <option>ปทุมธานี</option>
                                                <option>ประจวบคีรีขันธ์</option>
                                                <option>ปราจีนบุรี</option>
                                                <option>ปัตตานี</option>
                                                <option>พระนครศรีอยุธยา</option>
                                                <option>พังงา</option>
                                                <option>พัทลุง</option>
                                                <option>พิจิตร</option>
                                                <option>พิษณุโลก</option>
                                                <option>เพชรบุรี</option>
                                                <option>เพชรบูรณ์</option>
                                                <option>แพร่</option>
                                                <option>พะเยา</option>
                                                <option>ภูเก็ต</option>
                                                <option>มหาสารคาม</option>
                                                <option>มุกดาหาร</option>
                                                <option>แม่ฮ่องสอน</option>
                                                <option>ยะลา</option>
                                                <option>ยโสธร</option>
                                                <option>ร้อยเอ็ด</option>
                                                <option>ระนอง</option>
                                                <option>ระยอง</option>
                                                <option>ราชบุรี</option>
                                                <option>ลพบุรี</option>
                                                <option>ลำปาง</option>
                                                <option>ลำพูน</option>
                                                <option>เลย</option>
                                                <option>ศรีสะเกษ</option>
                                                <option>สกลนคร</option>
                                                <option>สงขลา</option>
                                                <option>สตูล</option>
                                                <option>สมุทรปราการ</option>
                                                <option>สมุทรสงคราม</option>
                                                <option>สมุทรสาคร</option>
                                                <option>สระแก้ว</option>
                                                <option>สระบุรี</option>
                                                <option>สิงห์บุรี</option>
                                                <option>สุโขทัย</option>
                                                <option>สุพรรณบุรี</option>
                                                <option>สุราษฎร์ธานี</option>
                                                <option>สุรินทร์</option>
                                                <option>หนองคาย</option>
                                                <option>หนองบัวลำภู</option>
                                                <option>อ่างทอง</option>
                                                <option>อุดรธานี</option>
                                                <option>อุทัยธานี</option>
                                                <option>อุตรดิตถ์</option>
                                                <option>อุบลราชธานี</option>
                                                <option>อำนาจเจริญ</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label for="">ไปรษณีย์</label><br>
                                            <input name="zipcode" type="text" class="form-control" name="zip" value="${member.zip}">
                                        </div>

                                        <input type="submit" class="btn btn-default" value="Update">
                                        <input type="reset" class="btn btn-default" value="Reset">
                                    </form>
                                    <br>
                                    <font color="red">
                                    ${message}</font>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--/Edit-->
                </div>
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

