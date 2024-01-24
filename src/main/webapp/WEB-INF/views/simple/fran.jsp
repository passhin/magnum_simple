<%@page import="java.sql.*"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!-- 			 -->
<!-- 			 -->
<!-- 			 -->
<%@include file="../inc/header.jsp"%>

<div class="list">
	<ul>
		<c:forEach var="hit4" items="${hit4}" varStatus="status">
			<li>${hit4.images }</li>'
		<li>${hit4.fname }</li>
			<li>2인기준 - ${hit4.cost }</li>
			<li>${hit4.address }</li>
		</c:forEach>
	</ul>
	<table class="table table-striped" style="width: 80%; margin: 0 auto;">
		<caption class="list">
			데이트 코스<br /> - ${ mname}
		</caption>
		<colgroup>
			<col style="width: 20%">
			<col style="width: 30%">
			<col style="width: 40%">
			<col style="width: 10%">
		</colgroup>
		<thead>
			<tr>
				<th scope="col" class="myhidden">가맹점목록</th>
				<th scope="col" class="myhidden">가맹점목록</th>
				<th scope="col" class="myhidden">가맹점목록</th>
				<th scope="col" class="myhidden">가맹점목록</th>
				<th scope="col" class="myhidden">가맹점목록</th>
			</tr>
		</thead>
		<tbody>
			<tr style="height: 100px">
				<c:forEach var="list" items="${list}" varStatus="status">
					<td>
						<ul>
							<li>${list.images }</li>
							<li>${list.fname }</li>
							<li>2인기준 - ${list.cost }</li>
							<li>${list.address }</li>
						</ul>
					</td>
				</c:forEach> 
				<%-- <c:forEach var="item" items="${combinedList}">
					<c:choose>
						<c:when test="${item['fname'] ne null}">
							<!-- FranDto의 속성 활용 -->
							<p>${item.fname}</p>
						</c:when>
						<c:when test="${item['iname'] ne null}">
							<!-- ImagesDto의 속성 활용 -->
							<img src="${item.iname}" alt="Image">
						</c:when>
						<c:when test="${item['address'] ne null}">
							<!-- FranDto의 속성 활용 -->
							<p>${item.address}</p>
						</c:when>
						<c:when test="${item['cost'] ne null}">
							<!-- FranDto의 속성 활용 -->
							<p>2인기준 - ${item.cost}</p>
						</c:when>
					</c:choose>
				</c:forEach> --%>
			</tr>
		</tbody>
		<tfoot>
			<tr>
				<td colspan="3" class="text-center">
					<ul class="pagination">
						<!-- 이전 -->
						<!-- 1(10) 2 3 4 5 6 7 8 9 10 -->
						<!-- 이전(90) 11(100) 12 13 14 15 16 17 18 19 20 -->
						<c:if test="${paging.start >= paging.bottomlimit }">
							<li><a
								href="${pageContext.request.contextPath}/list.fran?pstartno=${(paging.start-2)*paging.onepagelimit}">이전</a>
							</li>
						</c:if>
						<!-- 1 2 3 4 5 6 7 8 9 10 -->
						<c:forEach begin="${paging.start }" end="${paging.end }" var="i">
							<li <c:if test="${paging.current == i}"> class="active"</c:if>>
								<a
								href="${pageContext.request.contextPath }/list.fran?pstartno=${(i-1)*paging.onepagelimit}">${i }</a>
							</li>
						</c:forEach>
						<!-- 다음 -->
						<!-- 1 2 3 4 5 6 7 8 9 10(90) 다음(100) -->
						<!-- 11 12 13 14 15 16 17 18 19 20(190) 다음(200) -->
						<c:if test="${paging.end <= paging.bottomlimit }">
							<li><a
								href="${pageContext.request.contextPath}/list.fran?pstartno=${paging.end*paging.onepagelimit}">다음</a>
							</li>
						</c:if>
					</ul>
				</td>
			</tr>
		</tfoot>
	</table>
	<p class="text-right" style="margin-right: 10%">
		<a
			href="${pageContext.request.contextPath }/write_view.zoo?area=${area}"
			class="btn btn-default">글쓰기</a>
	</p>
</div>
<script>
	$(document).ready(function() {
		$("#inquiryForm").submit(function() {
			if ($("#content").val() == "") {
				alert("내용을 입력하세요");
				$("#content").focus();
				return false;
			}
			if ($("#area").val() == "0") {
				alert("지역을 선택하세요");
				$("#area").focus();
				return false;
			}
			if ($("#ldate").val() == "") {
				alert("잃어버린 날을 체크해주세요");
				$("#ldate").focus();
				return false;
			}
		});
	});
</script>








<%@include file="../inc/footer.jsp"%>