<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../inc/header.jsp"%>
    <div class="container">
    <div class="login-wrapper">
        <h2>SIMPLE</h2>
        <form method="post" action="pw.magnum" id="login-form">
            <h3>비밀번호 찾기</h3>
            <label for="id"></label>
            <input type="text" name="id" placeholder="id">
            <label for="eamil"></label>
            <input type="text" name="email" placeholder="email">
          
            <input type="submit" value="다음">
        </form>
    </div>
   
</div>
<%@include file="../inc/footer.jsp"%>