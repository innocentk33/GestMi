<%--
  Created by IntelliJ IDEA.
  User: inno-kirito
  Date: 25/08/2018
  Time: 08:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>GestMi</title>
</head>
<body>
<c:if test="${!empty sessionScope.email}">
    <%@include file="inc/navbarConnecter.jsp"%>
</c:if>
<c:if test="${empty sessionScope.email}">
    <%@include file="inc/navbar.jsp"%>
</c:if>


<!-- section -->
<div class="section">
    <!-- container -->
    <div class="container">
        <!-- row -->
        <div class="row">
            <!-- post -->
            <div class="col-md-6">

            </div>
            <!-- /post -->

            <!-- post -->
            <div class="col-md-6">

            <!-- /post -->
        </div>
        <!-- /row -->

        <!-- row -->
        <div class="row">
            <div class="col-md-12">
                <div class="section-title">
                    <h2>Articles recents</h2>
                </div>
            </div>

            <div class="clearfix visible-md visible-lg"></div>
        </div>
        <!-- /row -->

        <!-- row -->
        <div class="row">
            <div class="col-md-8">
                <div class="row">
                    <!-- post -->
                    <!-- /post -->
                    <div class="clearfix visible-md visible-lg"></div>

                </div>
            </div>
        </div>
        <!-- /row -->
    </div>
    <!-- /container -->
</div>
<!-- /section -->
</body>
</html>
