<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../inc/header.jsp"%>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/detail.css"
	type="text/css">
<div class="container panel panel-success">
	<h3 class="paenl-heading">${title}</h3>
	<c:set var="total" value="${list.size() }"></c:set>
	<c:forEach var="dto" items="${list }" varStatus="status">
		<div class="images_detail">
			<img alt="가맹점 썸네일"
				src="${pageContext.request.contextPath}/resources/images/${dto.fno }no1.jpg">
		</div>
		<div class="info_course_detail">
			<h4 class="paenl-heading">${dto.fname }</h4>
			<p>${status.count }번째데이트코스</p>
			<p>운영시간 : ${dto.starttime } ~ ${dto.endtime }</p>
			<p>위치 : ${dto.address }</p>
			<p>금액 : 2인기준 ${dto.cost }</p>
			<p>근처역 : ${dto.mname }</p>
		</div>
	</c:forEach>
</div>
<div style="text-align: right; margin-top: 10px; width:80%;">
	<input type="button" id="back" value="리스트 선택 돌아가기" onclick="history.go(-1)" class="btn btn-success"> 
		<input type="button" id="main" value="메인페이지로" class="btn btn-success"
		onclick="location.href='${pageContext.request.contextPath }/main.magnum'">
</div>
</body>

<%@include file="../hayun/hearts.jsp"%>