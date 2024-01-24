<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>SIMPLE-DateList</title>
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
<title>SimpleDateList</title>
</head>
<body>
	<div class="container panel panel-info">
		<h3 class="panel-heading">DateList</h3>
		<form action="Date" method="get">
			<fieldset>
				<legend>제목입력하세요</legend>
				<div class="form-group">
					<label for="title">title</label>
					<input type="text" name="title" id="title" class="form-control">
				</div>
				<div class="form-group">
					<input type="submit" value="데이트코스 추가하기" class="form-control btn btn-danger">
				</div> 
			</fieldset>
		</form>
	</div>
</body>
</html>