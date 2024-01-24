<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
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
<script>
	function readFranchise() {
		$.ajax({
			url : "${pageContext.request.contextPath}/listout",
			type : "get",
			dataType : "json",
			data : {
				cnum : $("#cnum").val(),
				mno : $("#mno").val()
			},
			success : listResult,
			error : function(xhr, status, msg) {
				alert(".." + status + "/" + msg);
			}
		});
	}
	function listResult(json) {
		$(".r1 tbody").empty();
		$
				.each(
						json.result,
						function(idx, list) {
							$("<tr>")
									.append($("<td>").html(list.fname))
									.append($("<td>").html(list.content))
									.append($("<td>").html(list.mname))
									.append($("<td>").html(list.cname))
									.append(
											$("<td><input type='button' value='추가하기' class='add'></td>"))
									.append(
											$("<td><input type='hidden' value="+list.fno+" class='fno'></td>"))
									.appendTo(".r1 tbody");
						});
	}
	function insertcourse() {
		console.log("insert 도착");
		$.ajax({
			url : "${pageContext.request.contextPath}/insert",
			type : "get",
			dataType : "json",
			data : {
				cnum : $("#cnum").val(),
				mno : $("#mno").val(),
				dno : $("#dno").val(),
				fno : $(".fno").val()
			},
			success : listResult2,
			error : function(xhr, status, msg) {
				alert(".." + status + "/" + msg);
			}
		});
	}
	function listResult2(json) {
		$
				.each(
						json.result,
						function(idx, list) {
							$("<tr>")
									.append($("<td>").html(list.fname))
									.append($("<td>").html(list.content))
									.append($("<td>").html(list.mname))
									.append($("<td>").html(list.address))
									.append($("<td>").html(list.cost))
									.append(
											$("<td><input type='button' value='삭제하기' class='cdelete'></td>"))
									.appendTo(".r2 tbody");
						});
	}
	function deletecourse() {
		console.log("deletecourse 도착");
		$.ajax({
			url : "${pageContext.request.contextPath}/coursedelete",
			type : "get",
			dataType : "json",
			data : {
				dno : $("#dno").val()
			},
			success : function(json){
				let msg="코스 삭제 실패";
				if(json.result==1){
					msg="코스 삭제 성공";
				}
				alert(msg);
				$("#dno").val('');
				readFranchise();
			},
			error : function(xhr, status, msg) {
				alert(".." + status + "/" + msg);
			}
		});
	}
	$(function() {
		$("body").on("click", ".add", function() {
			insertcourse();
			return false;
		});
	});
	$(function() {
		$("body").on("click", ".cdelete", function() {
			coursedelete();
			return false;
		});
</script>
<title></title>
</head>
<body>
	<div class="container panel panel-info">
		<h3 class="panel-heading">${dtitle }</h3>
		<div class="form-group">
			<select id="cnum" name="cnum" class="form-control">
				<option value="0">카테고리를 선택해주세요</option>
				<option value="1">숙소</option>
				<option value="2">음식점</option>
				<option value="3">카페</option>
				<option value="4">체험</option>
				<option value="5">전시</option>
			</select>
			<%--추후 c:forEach로 리스트 뽑을 예정 --%>
		</div>
		<div class="form-group">
			<select id="mno" name="mno" class="form-control">
				<option value="0">지하철 선택해주세요</option>
				<option value="38">신촌</option>
				<option value="17">강변</option>
				<option value="44">신도림</option>
				<option value="9">강남</option>
				<option value="10">역삼</option>
			</select>
			<%--추후 c:forEach로 리스트 뽑을 예정 --%>
		</div>
		<div class="form-group">
			<input type="button" id="listout" value="조건 설정 완료"
				class="btn btn-success">
		</div>
		<script>
			$(function() {
				$("#listout").on("click", function() {
					if ($("#cnum").val() == 0) {
						alert("카테고리 선택해주세요.");
						$("#cnum").focus();
						return false;
					} else if ($("#mno").val() == 0) {
						alert("지하철 선택해주세요.");
						$("#mno").focus();
						return false;
					} else {
						readFranchise();
					}
				});
			});
		</script>
	</div>
	<div class="container panel panel-info">
		<h3 class="panel-heading">가맹점 리스트</h3>
		<table class="table table-striped r1">
			<caption>마음에 드는 코스를 추가하세요</caption>
			<thead>
				<tr>
					<th scope="col">가맹점이름</th>
					<th scope="col">운영정보</th>
					<th scope="col">지하철역</th>
					<th scope="col">카테고리</th>
					<th scope="col">추가하기</th>
				</tr>
			</thead>
			<tbody>
				<!-- c:forEach로 td 다 받아오고 -->

				<!-- /insert로 controller로 이동시켜서 service에 필요한 값을 넘기고
					리스트 쿼리 실행후 result 값으로 받아서 출력  -->
			</tbody>
		</table>
	</div>


	<div class="container panel panel-info">
		<h3 class="panel-heading">데이트코스</h3>
		<table class="table table-striped r2">
			<caption>선택하신 데이트 코스입니다.</caption>
			<thead>
				<tr>
					<th scope="col">가맹점이름</th>
					<th scope="col">운영정보</th>
					<th scope="col">지하철역</th>
					<th scope="col">주소</th>
					<th scope="col">데이트비용</th>
				</tr>
			</thead>
			<tbody>
				<!-- c:forEach로 td 다 받아오고 -->

				<!-- /insert로 controller로 이동시켜서 service에 필요한 값을 넘기고
					리스트 쿼리 실행후 result 값으로 받아서 출력  -->
			</tbody>
		</table>
	</div>
	<input type="hidden" id="dno" value="${dto }">
	<input type="button" value="데이트코스 삭제"
		onclick="location.href='${pageContext.request.contextPath}/coursedelete'">
	<input type="button" value="데이트코스 완료"
		onclick="location.href='${pageContext.request.contextPath}/coursecomplete'">
</body>
</html>