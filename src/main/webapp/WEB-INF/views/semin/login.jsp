<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@include file="../inc/header.jsp"%>
 <script>
 
   let result = '${success}';
   console.log(result);
   if(result != "") {
      alert(result);
   }
  
</script>
<div class="container">
    <div class="login-wrapper">
        <h2>SIMPLE</h2>
        <form method="post" action="login.magnum" id="login-form">
            <label for="id">아이디</label>
            <input type="text" name="id" id="id" placeholder="id">
            <label for="pw">비밀번호</label>
            <input type="password" name="pw" id="pw" placeholder="pw">
            <div class="link">
                <a href="membership.magnum" title="회원가입">회원가입</a>
                <a href="id.magnum" title="ID 찾기">ID 찾기</a>
                <a href="pw.magnum" title="PW 찾기">PW 찾기</a>
            </div>
            <input type="submit" value="로그인">
        </form>
    </div>
   
</div>
<%@include file="../inc/footer.jsp"%>