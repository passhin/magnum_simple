<%@page import="java.sql.*"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

	<!-- 			 -->
	<!-- 			 -->
	<!-- 			 -->
<%@include file="../inc/header.jsp" %>

<div class="read">
	<h3>${dto.fname }</h3>
	<p>${dto.address }</p>
	<p>영업시간 : ${dto.starttime } ~ ${dto.endtime }</p>
	<p>전화번호 : ${dto.phone }</p>
	<div class="img_group">
		<c:forEach var="img" items="${imgs }" varStatus="status">
			<p style="width:200px; float:left" class="imgp">
				<img src="${pageContext.request.contextPath }/resources/images/${img.iname}" title="${img.fname }" style="width:200px">
			</p>
		</c:forEach>
	</div>
	<div class="clear" style="clear:both;">
		<textarea rows="5" cols="80">${dto.content }</textarea>
	</div>
	<div class="text-right" style="margin: 5% 5% 0 0">
		<c:if test="${login.getId() == 'cwal15'}">
			<a href="${pageContext.request.contextPath}/update?fno=${dto.fno}" class="btn btn-default">수정하기</a>
			<a href="${pageContext.request.contextPath}/delete?fno=${dto.fno}" class="btn btn-danger">삭제하기</a>
		</c:if>
			<a href="${pageContext.request.contextPath}/DateList" class="btn btn-default">데이트코스 짜러가기</a>
			<a href="javascript:history.go(-1)" class="btn btn-default">목록보기</a>
	</div>
</div>

<%@include file="../inc/footer.jsp" %>