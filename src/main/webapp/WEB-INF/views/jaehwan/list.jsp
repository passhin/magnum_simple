<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../inc/header.jsp"%>
<script>
	var dnoValue;	
	function readlist() {
		$.ajax({
			url : "${pageContext.request.contextPath}/courselist",
			type : "get",
			dataType : "json",
			data : {
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
		$.each(	json.result, function(idx, list) {
			console.log(list.dno);
			var addButton = $("<input type='button' value='후기보기' class='search'>");
			addButton.data("dno", list.dno);
				$("<tr>").append($("<td>").html(list.dtitle))
				.append($("<td>").html(list.dcnt+"가지 데이트"))
				.append($("<td>").html(list.mname))
				.append($("<td>").html(list.ddate))
				.append($("<td>").append(addButton))
				.appendTo(".r1 tbody");

						});
		$(".search").on("click", function() {
			dnoValue = $(this).data("dno");
			location.href="${pageContext.request.contextPath}/detail?dno="+dnoValue;
		});
	}
</script>
<title></title>
</head>
<body>
	<div class="container panel panel-success">
		<h3 class="panel-heading">DateList</h3>
		<div class="form-group">
			<select id="mno" name="mno" class="form-control">
				<option value="0">지하철역 선택해주세요</option>
				<option value="38">신촌</option>
				<option value="17">강변</option>
				<option value="44">신도림</option>
				<option value="9">강남</option>
				<option value="10">역삼</option>
			</select>
		</div>
		<div style="text-align: right; margin-top: 10px;">
			<input type="button" id="list" value="역선택 완료" class="form-control btn btn-success">
		</div>
	</div>
	<script>
		$(function() {
			$("#list").on("click", function() {
				if ($("#mno").val() == 0) {
					alert("카테고리 선택해주세요.");
					$("#mno").focus();
					return false;
				} else {
					readlist();
				}
			});
		});
	</script>
	<div class="container panel panel-success">
		<h3 class="panel-heading">데이트 코스 리스트</h3>
		<table class="table table-striped r1">
			<caption>해당역에 검색된 리스트입니다.</caption>
			<thead>
				<tr>
					<th scope="col">데이트 코스 이름</th>
					<th scope="col">데이트 스케쥴</th>
					<th scope="col">지하철역</th>
					<th scope="col">데이트 코스 추가한 날짜</th>
					<th scope="col">후기보러가기</th>
				</tr>
			</thead>
			<tbody>
		
			</tbody>
		</table>
		<input type="hidden" id="dno" value="${dno }">
	</div>
</body>
<%@include file="../inc/footer.jsp"%>