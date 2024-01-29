<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>simple</title>

<!--구글웹 font -->

<link
	href="https://fonts.googleapis.com/css2?family=Calistoga&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Gowun+Batang&family=Nanum+Gothic+Coding&display=swap"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/reset.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/base.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/layout.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/mystyle.css?after"
	type="text/css">

<style>
* {
	margin: 0;
	padding: 0;
}

#hdtop {
	position: sticky;
	top: 0;
}

img#logoSimple {
	width: 175px;
}

.logosimple {
	margin-left: 100px;
	cursor: pointer;
}

.links {
	padding: 0;
	margin: 0;
}

.navbar {
	height: 90px;
	color: #fff;
	padding-bottom: 10px;
	width: 100%;
	background-color: white;
	display: flex;
	align-items: center;
	box-shadow: 1px 3px 5px rgba(0, 0, 0, 0.07);
}

.navbar ul.links {
	margin-left: auto;
	margin-right: 80px;
	list-style: none;
	display: flex;
	align-items: center;
	transition: 0.4s ease all, 0s ease background;
}

.cols-course, .cols-review {
	text-decoration: none;
	font-weight: 250;
	font-family: 'Gowun Dodum', sans-serif;
	color: #000;
	transition: color 0.2s ease;
	font-size: 16px;
}

.cols-course:hover, .cols-review:hover {
	color: #aac9aa;
	text-decoration: none;
}

.mini {
	text-transform: uppercase;
	padding: 0 18px;
	display: flex;
	justify-content: center;
	align-items: center;
	transition: 0.4s ease all, 0s ease margin;
}

.mini:hover, #info-icon:hover {
	
}

#info-icon {
	width: 30px;
	height: 30px;
}

.dropbtn {
	font-family: 'Gowun Dodum', sans-serif;
	height: 100px;
	background: white;
	color: black;
	padding: 16px;
	font-size: 16px;
	border: none;
	cursor: pointer;
}

.dropdown {
	font-family: 'Gowun Dodum', sans-serif;
	position: relative;
	display: inline-block;
}

.dropdown:hover .dropdown-content {
	display: block;
}

.dropdown:hover .dropbtn img {
	filter: brightness(1.3);
	transition: filter 0.4s ease;
}

.dropdown:hover .dropbtn {
	background-color: #ffffff;
	color: #aac9aa;
	transition: background-color 0.3s ease, color 0.3s ease;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #ffffff;
	min-width: 160px;
	color: #564e4e;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.1);
	z-index: 1;
}

.dropdown-content a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
}

.dropdown-content a:hover {
	background-color: #f3f6f1;
	color: #627762;
	transition: background-color 0.3s ease, color 0.3s ease;
}

.nondrop, .dropdown {
	margin-right: 50px;
}

.inquiry_img {
	background-image: url(/simple_ver2/resources/images/inquiry2.png);
	background-repeat: no-repeat;
	background-size: contain;
	background-position: center;
	height: 1300px;
}

body {
	margin: 0;
	font-family: '맑은고딕', sans-serif;
}

footer {
	border-top: 2px solid #d8d8d8;
	background-color: #dee0dd;
	padding: 32px;
	height: 190px;
	bottom: 0;
	left: 0;
	width: 100%;
	font-size: 12px;
	color: #495151;
}

.footer-message {
	font-weight: bold;
	margin: 0 0 0 10px;
	margin-left: 30px;
}

.footer-contact {
	margin: 10px;
	margin-left: 30px;
}

.footer-copyright {
	text-align: center;
}
.myhidden{
	position: absulute;
	left:-9999%;
	top:-9999%;
	font-size:0;
}
  .fakeimg {
     background-size: cover; /* 이미지가 부모 요소에 맞춰질 때 비율을 유지하면서 잘린 부분을 cover로 설정 */
    background-position: center; /* 이미지를 부모 요소의 가운데에 위치시킴 */
    background-repeat: no-repeat; /* 배경 이미지를 반복하지 않음 */
    height: 300px; /* 원하는 높이로 설정 */
  }
   .fakeimg img {
    width:100%;
    height:100%
    }
    #hdtop {
    position: sticky;
    top: 0;
    z-index: 1000; /* 헤더를 다른 요소들 위에 표시 */
}
.carousel-control {
    opacity: 0;
}

</style>
</head>
<body>
	<div id="hdtop">
		<div class="navbar">
			<div class="logosimple">
				<a href="${pageContext.request.contextPath }/main.magnum"
					title="메인으로"><img
					src="${pageContext.request.contextPath}/resources/images/headerImg/logo.png"
					alt="심플로고" id="logoSimple"></a>
			</div>
			<ul class="links">


				<div class="nondrop">
					<li class="mini"><a class="cols-course"
						href="${pageContext.request.contextPath }/coursecomplete?dno=0">데이트
							코스</a></li>
				</div>

				<div class="dropdown">
					<button class="dropbtn">데이트 장소</button>
					<div class="dropdown-content">
						<a class="dropdown-item"
							href="${pageContext.request.contextPath }/list.fran">데이트장소 보기</a>

						<c:if test="${login.getId() == 'admin'}">
							<a class="dropdown-item"
								href="${pageContext.request.contextPath }/DateList">데이트코스 추가</a>
							<a class="dropdown-item"
								href="${pageContext.request.contextPath }/inquiry">데이트장소 추가</a>
						</c:if>
						<a href="${pageContext.request.contextPath }/minquiry">가맹점 문의</a>
					</div>
				</div>

				<div class="nondrop">
					<li class="mini"><a class="cols-review" href="#">코스후기</a></li>
				</div>

				<div class="dropdown">
					<button class="dropbtn">
						<a href="#"><img
							src="${pageContext.request.contextPath}/resources/images/headerImg/mypage.png"
							alt="정보서랍" id="info-icon"></a>
					</button>

					<div class="dropdown-content">

						<c:choose>
							<c:when test="${login.getId() == null}">

								<a href="login.magnum">로그인</a>
							</c:when>

							<c:when test="${login.getId() == 'admin'}">
								<a class="dropdown-item" href="adminlist.magnum">사용자 목록</a>
								<a class="dropdown-item" href="logout.magnum">로그아웃</a>
							</c:when>
							<c:otherwise>
								<a class="dropdown-item" href="DateList">데이트 코스 짜러가기</a>
								<a class="dropdown-item" href="myheartList">내 좋아요 리스트</a>
								<a class="dropdown-item"
									href="modification.magnum?id=${login.id}">나의 정보 조회</a>
								<a class="dropdown-item" href="logout.magnum">로그아웃</a>
								<a class="dropdown-item" href="withdrawal.magnum">회원탈퇴</a>
							</c:otherwise>
						</c:choose>

					</div>


				</div>
			</ul>
		</div>
	</div>