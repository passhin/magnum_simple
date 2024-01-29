<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <script>
 
	let result = '${success}';
	console.log(result);
	if(result != "") {
		alert(result);
	}
  
</script>
<%@include file="../inc/header.jsp"%>
    <div class="container"   style="margin-top:5%; min-height:500px">
        <h3>사용자 목록</h3>
        <table  class="table table-striped">
            <caption></caption>
            <thead>
                <tr><th scope="col">NO</th><th scope="col">아이디</th>
                      <th scope="col">이메일</th><th scope="col">생년월일</th>
                      <th scope="col">이름</th> <th scope="col">비고</th>
                      </tr>
            </thead>
            <tbody>
            <c:set var="total" value="${list.size()}"/>
            <c:forEach var="dto" items="${list}" varStatus="status">
            
                 <tr>
                 <td>${total-status.index }</td>
                 <td><a href="adminpw.magnum?id=${dto.id}">${dto.id} </a></td>
                 <td>${dto.email}</td>
                 <td>${dto.birth}</td>
                 <td>${dto.name}</td>
                 <!-- 아이디 : <input type="text" name="user_id"><br>
    비밀번호 : <input type="password" name="user_pw"><br>
    <input type="hidden" id="gameToken" name="game_token" value="xm234jq">
    <input type="submit"> -->
                 <td><a href="admindelete.magnum?uno=${dto.uno}">탈퇴</a></td>
                 </tr>
                 </c:forEach>
 
        
            </tbody>
        </table>
    </div>

<%@include file="../inc/footer.jsp"%>