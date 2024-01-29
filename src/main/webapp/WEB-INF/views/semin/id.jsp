<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<%@include file="../inc/header.jsp"%>
<div class="container">
    <div class="login-wrapper">
        <h2>SIMPLE</h2>
        <form method="post" action="id.magnum" id="login-form">
            <h3>아이디 찾기</h3>
            <label for="email">이메일</label>
            <input type="text" name="email" placeholder="email">
           
            <input type="submit" value="아이디 찾기" id="button">
        </form>
    </div>
  
</div>
<%@include file="../inc/footer.jsp"%>