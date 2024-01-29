<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../inc/header.jsp"%>

	<div class="container panel panel-success">
		<h3 class="panel-heading">DateList</h3>
		<form action="Date" method="get" id="list">
			<fieldset>
				<legend>데이트코스 제목을 지어주세요</legend>
				<div class="form-group">
					<label for="title">title</label>
					<input type="text" name="title" id="title" class="form-control">
				</div>
				<div class="form-group" style="text-align: right; margin-top: 10px;">
					<input type="submit" value="데이트코스 추가하기" class="form-control btn btn-success">
					<input type="hidden" name="uno" value="${sessionScope.login.uno}">
				</div>				
			</fieldset>
		</form>
	</div>
	<script>
			$(function() {
				$("#list").on("submit", function() {
					if ($("#title").val() == "") {
						alert("제목 입력해주세요.");
						$("#title").focus();
						return false;
					}
				});
			});
		</script>
</body>
<%@include file="../inc/footer.jsp"%>