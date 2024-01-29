<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib  prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../inc/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/myHeartListCss.css"/>
<title>좋아요 리스트</title>
</head>
<body>
 
		<div class="container"   style="margin-top:5%; min-height:500px">
	<h3>좋아요 목록</h3>
	<table  class="table table-striped">
		<caption>내가 좋아요 누른 데이트리스트 입니다.</caption>
		<thead>
			<tr><th scope="col">데이트 이름</th><th scope="col">코 스</th>
			      <th scope="col">위 치</th><th scope="col">추가일</th><th scope="col">삭 제</th></tr>
		</thead>
		<tbody>
	 	 
 			<c:set var="total"  value="${list.size()}"/>
 			<c:forEach var="dto"  items="${list.list}" varStatus="status">
 					<tr><td>${dto.dtitle}</td>
 					<td><a href="#">${dto.fname}</a></td>
 					<td>${dto.mname}</td>
 					<td>${dto.hdate}</td>
					<td>
					   <button class="delBtn" data-uno="${dto.uno}" data-dno="${dto.dno}">
					      <img src="${pageContext.request.contextPath}/resources/images/heartImg/heartA.png" alt="삭제버튼"/> 
					   </button>
					</td>
 					</tr>
 			 </c:forEach>
		</tbody>
	</table>
	<p  class="text-right"><a href="${pageContext.request.contextPath }/coursecomplete?dno=0"   class="btn btn-success">데이트 리스트 추가</a></p>
</div>

}
<script>
$(function(){
	$(".delBtn").on("click",function(){
		let uno = $(this).data('uno');
	    let dno = $(this).data('dno'); 
		let result = confirm('해당 데이트 리스트를 좋아요 목록에서 삭제 하시겠습니까?');
		if(result){
			delHeart(uno,dno)
		}else{
			return false;
		}
	});
});

 
function delHeart(uno,dno){
    console.log('delHeart.....................');
     
    ajaxRequest = $.ajax({
        url:"delHeartList",
        type:"GET",
        dataType:"json",  
        data:{uno:uno, dno:dno},
        error: function(xhr,status,msg){
            alert(stataus+"/delHeart/"+msg);
        },
        success: function() {
            alert('좋아요가 삭제되었습니다.'); 
            location.reload();
        }
    });
}



</script>
</body>
</html>