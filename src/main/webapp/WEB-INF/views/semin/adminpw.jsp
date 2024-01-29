<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<%@include file="../inc/header.jsp"%>
<div class="container">
    <div class="login-wrapper">
        <h2>SIMPLE</h2>
        <form method="get" action="adminmodification.magnum" id="login-form">
            <h3>관리자 비밀번호</h3>
            <label for="pw">비밀번호</label>
            <input type="password" name="pw" placeholder="pw">
            <input type="hidden" name="id" value="${id}" >
            <input type="submit" value="확인">
        </form>
    </div>
</div>
<%@include file="../inc/footer.jsp"%>