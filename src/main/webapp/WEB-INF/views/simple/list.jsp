<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>BASIC001</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Lato"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat"
	rel="stylesheet" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title></title>
</head>
<body>
	<div class="container panel panel-info">
		<h3 class="panel-heading">DateList</h3>
		<form action="listout" method="get">
			<fieldset>
				<legend>역 검색</legend>
				<div class="form-group">
					<select id="cnum" name="cnum" class="form-control">
						<option value="0">지하철역 선택해주세요</option>
						<option value="1">강남</option>
						<option value="2">역삼</option>
						<option value="3">홍대</option>
						<option value="4">합정</option>
						<option value="5">한양대</option>
					</select>
					<%--추후 c:forEach로 리스트 뽑을 예정 --%>
				</div>
			</fieldset>
		</form>
	</div>
	<div class="container panel panel-info">
		<h3 class="panel-heading">리스트 출력부분</h3>
		<table class="table table-striped r1">
			<caption>해당역 + 해당카테고리 리스트</caption>
			<thead>
				<tr>
					<th scope="col">NO</th>
					<th scope="col">데이트 코스 이름</th>
					<th scope="col">날짜</th>
					<th scope="col">지하철역</th>
					<th scope="col">후기보기</th>
				</tr>
			</thead>
			<tbody>
				<!-- c:forEach로 td 다 받아오고 -->
				<tr>
					<td><input type="button" value="후기보기"
						onclick="location.href='/detail'"></td>
				</tr>
				<!-- /insert로 controller로 이동시켜서 service에 필요한 값을 넘기고
					리스트 쿼리 실행후 result 값으로 받아서 출력  -->
			</tbody>
		</table>
	</div>
</body>
</html>