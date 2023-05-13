<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="EUC-KR" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <%--카카오맵--%>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=da86c8457c75372952796f5bbc52cb25"></script>
    <%--HighChart--%>
    <script src="https://code.highcharts.com/highcharts.js"></script>
    <script src="https://code.highcharts.com/modules/series-label.js"></script>
    <script src="https://code.highcharts.com/modules/exporting.js"></script>
    <script src="https://code.highcharts.com/modules/export-data.js"></script>
    <script src="https://code.highcharts.com/modules/accessibility.js"></script>
    <script src="https://code.highcharts.com/highcharts-3d.js"></script>
    <script src="https://code.highcharts.com/modules/data.js"></script>
    <style>
        <%--navbar--%>
        .logo {
            font-size: 30px;
            color: white;
            text-decoration: none;
        }
        a.logo:hover {
            color: white;
            text-decoration: none;
            border-color:white;
        }
        .navbar {
            margin: 0;
            border-radius: 0;
            height: 80px;
            width: 100%;
            font-size: 20px;
            padding-top: 15px;
        }
        .navbar-form navbar-left{
            margin: 5px 0px;
        }
        .navbar-category {
            font-weight: bolder;
            padding: 15px;
        }
        <%--loginbar--%>
        #login_btn {
            width: 150px;
            height: 30px;
            border-radius: 0;
            font-size: 12px;
            background-color: white;
            vertical-align: middle;
            margin-right: 20px;
        }
        #login_btn:hover {
            color: white;
            background-color: #222222;
        }
        #login_btn p {
            margin: auto;
            padding: 5px 0px;
        }
        .loginbar-category {
            padding: 0px 8px;
        }
        .loginbar-category a {
            font-size: 12px;
            color: #222222;
            font-weight: bold;
        }
        .row.content {height: 100%}
        footer {
            background-color: #555;
            color: white;
            padding: 15px;
        }
        /* On small screens, set height to 'auto' for sidenav and grid */
        @media screen and (max-width: 767px) {
            .sidenav {
                height: auto;
                padding: 15px;
            }
            .row.content {height:auto;}
        }
    </style>
</head>
<body>
<%--navbar--%>
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <div style="margin: 4px 0px;">
                <a class="logo" href="/">MOSINSA</a>
            </div>
        </div>
        <form class="navbar-form navbar-left" action="">
            <div class="input-group">
                <input type="text" class="form-control" placeholder="티셔츠 페스티벌 최대 80% 할인" name="search" style="border-radius: 0; width:250px; font-size: 12px; height: 28px">
                <div class="input-group-btn">
                    <a href="#" class="btn btn-dark" style="background-color: #222222; padding: 3px; margin: auto; width: 28px; height: 28px; border-color: gray; border-radius: 0">
                        <span class="glyphicon glyphicon-search" style="color: lightgrey"></span>
                    </a>
                </div>
            </div>
        </form>
        <ul class="nav navbar-nav navbar-right" style="padding-right: 20px">
            <li><a href="#" class="navbar-category" style="color: #00D47B">상의</a></li>
            <li><a href="#" class="navbar-category" style="color: #ED00EC">하의</a></li>
            <li><a href="#" class="navbar-category" style="color: #FFFFFF">신발</a></li>
            <li></li>
        </ul>
    </div>
</nav>
<div style="height:50px; padding:10px; border-bottom:1px solid lightgrey">
    <button type="button" id="login_btn"><p>로그인</p></button>
    <span class="loginbar-category" ><a href="#" style="color: #00A3FF; font-weight: bold">바로접속 ON</a></span>
    <span class="loginbar-category"><a href="#">마이페이지</a></span>
    <span class="loginbar-category"><a href="#">장바구니</a></span>
    <span class="loginbar-category"><a href="#">고객센터</a></span>
    <span class="loginbar-category"><a href="#" style="color: #048EFF">회원 가입 EVENT. 신규 가입 후 바로 사용 가능한 15% 할인 쿠폰 / 모신사 스탠다드 990원 구매 기회</a></span>
</div>
<div class="container-fluid text-center">
    <div class="row content">
        <%--left menu center--%>
        <c:choose>
            <c:when test="${left == null}">
                <jsp:include page="left.jsp"/>
            </c:when>
            <c:otherwise>
                <jsp:include page="${left}.jsp"/>
            </c:otherwise>
        </c:choose> <%--left menu end--%>
        <%--center--%>
        <c:choose>
            <c:when test="${center == null}">
                <jsp:include page="center.jsp"/>
            </c:when>
            <c:otherwise>
                <jsp:include page="${center}.jsp"/>
            </c:otherwise>
        </c:choose> <%--center end--%>
    </div> <%--row content end--%>
</div><%--container end--%>
<footer class="container-fluid text-center">
    <p>Footer Text</p>
</footer>
</body>
</html>