<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../inc/header.jsp"%>
    <div class="container">
    <div class="login-wrapper">
        <h2>SIMPLE</h2>
        <form method="post" action="#" id="login-form">
            <h3>회원탈퇴</h3>
            <label for="id">아이디</label>
            <input type="text" name="id" placeholder="id">
            <label for="pw">비밀번호</label>
            <input type="password" name="pw" placeholder="pw">
            
            <input type="submit" value="로그인">
        </form>
    </div>
</div>
<%@include file="../inc/footer.jsp"%>