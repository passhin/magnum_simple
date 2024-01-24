 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery.mousewheel.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/reset.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/base.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/layout.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/style.css" />
    <script src="${pageContext.request.contextPath }/resources/js/zjs.js"></script>
    <title>SIMPLE</title>
</head>
<body>
    <div class="wrap main">
        <div class="wrap_">
            <div class="header">
                    <nav>
                        <h2>네비게이션</h2>
                    <h1 class="logo"><a href="${pageContext.request.contextPath }/main.zoo"><span>SIMPLE</span></a></h1>
                
                    <div class="top_navi">
                        <strong>LINE UP</strong><span class="glyphicon glyphicon-triangle-bottom"></span>
                        <ul class="left">
                            <li><a href="#">찾아 Zoo!</a></li>
                            <li><a href="#">찾았 Zoo!</a></li>
                            <li><a href="#">귀엽 Zoo!</a></li>
                        </ul>
                    </div>
                    <div class="right">
                        <div class="life"><span>데이트의 소중함을 아는 당신</span></div>
                        <div class="sitemap"><img src="${pageContext.request.contextPath }/resources/images/Hamburger_icon.svg.png" alt="사이트맵"></div>
                    </div>
                    <div class="sitemap_wrap">
                        <div class="smap_wrap">
                            <div class="sitemap_top">
                                <div class="logo"><a href="${pageContext.request.contextPath }/main.zoo" title="main">SIMPLE</a></div>
                                <div class="right">
                                    <div class="login_menu">
                                        <a href="${pageContext.request.contextPath }/zoo/login.jsp" title="로그인">로그인</a>
                                        <a href="${pageContext.request.contextPath }/zoo/register.jsp" title="회원가입">회원가입</a>
                                    </div>
                                    <div class="xbtn"></div>
                                </div>
                            </div>
                            <div class="gnb_list pc">
                               
                                <ul class="gnb_list_ul">
                                    <li>
                                        <strong>SIMPLE</strong>
                                        <ul>
                                            <li><a href="#" title="인사말">인사말</a></li>
                                            <li><a href="#" title="공지사항">공지사항</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <strong>찾아 Zoo.!</strong>
                                        <ul>
                                            <li><a href="${pageContext.request.contextPath }/list.zoo?area=1" title="서울특별시">서울특별시</a></li>
                                            <li><a href="${pageContext.request.contextPath }/list.zoo?area=2" title="경기도">경기도</a></li>
                                            <li><a href="${pageContext.request.contextPath }/list.zoo?area=3" title="강원특별자치도">강원특별자치도</a></li>
                                            <li><a href="${pageContext.request.contextPath }/list.zoo?area=4" title="충청북도">충청북도</a></li>
                                            <li><a href="${pageContext.request.contextPath }/list.zoo?area=5" title="충청남도">충청남도</a></li>
                                            <li><a href="${pageContext.request.contextPath }/list.zoo?area=6" title="전라북도">전라북도</a></li>
                                            <li><a href="${pageContext.request.contextPath }/list.zoo?area=7" title="전라남도">전라남도</a></li>
                                            <li><a href="${pageContext.request.contextPath }/list.zoo?area=8" title="경상북도">경상북도</a></li>
                                            <li><a href="${pageContext.request.contextPath }/list.zoo?area=9" title="경상남도">경상남도</a></li>
                                            <li><a href="${pageContext.request.contextPath }/list.zoo?area=10" title="제주특별자치도">제주특별자치도</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <strong>찾았 Zoo.!</strong>
                                        <ul>
                                            <li><a href="#" title="돌아왔어요~!">돌아왔어요~!</a></li>
                                        </ul>
                                    </li>
                                    <li class="last">
                                        <strong>귀엽 Zoo.?!</strong>
                                        <ul>
                                            <li><a href="#" title="반려동물 자랑">반려동물 자랑</a></li>
                                        </ul>
                                    </li>
                                    <li class="gnb_img"></li>
                                </ul>
                                
                            </div>
                        </div>
                    </div>   
                    <div id="quickbar">
                        <ul>       
              				<% if( session.getAttribute("id") == null){ %>
        					<!--   login 안 한경우 - 세션이 없다면       -->
							<li class="q1"><a href="${pageContext.request.contextPath }/zoo/login.jsp" title="로그인"></a></li>
        					<% }else{ %>
							<!--   login  한  경우 - 세션이 있다면       -->
							<li class="q1"><a href="${pageContext.request.contextPath }/zoo/mypage.jsp" title="마이페이지"></a></li>
							<% }%>
              				<li class="q2"><a href="#" title="유튜브"></a></li>
              				<li class="q3"><a href="#" title="페이스북"></a></li>
              				<li class="q4"><a href="#" title="인스타그램"></a></li>
                        </ul>
                        <div class="open"><button><img src="${pageContext.request.contextPath }/resources/images/plus-fill.svg" alt="열기"></button></div>                        
                        <div id="up"><a href="#" title=""><img src="${pageContext.request.contextPath }/resources/images/up.svg"   alt="위로가기버튼 링크"/></a></div>
                    </div> 
                </nav>                
            </div> <!-- end header -->
