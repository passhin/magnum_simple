<%@page import="java.sql.*"%>
<%@page  language="java"  contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link href="${pageContext.request.contextPath}/resources/css/heartCss.css" rel="stylesheet" > 
 </head>
 <body> <!-- session으로부터 uno 갖고오기, 해당게시글의 dno 갖고오기 --> 
<script>
var ajaxRequest = null; 
var unoVal = '${sessionScope.login.uno}';
var dnoVal = getDno();

function getDno() {
    var url = window.location.href;
    var regex = /[?&]dno=(\d+)/;  
    var results = regex.exec(url);

    if (!results) return null;
    return results[1];        
}


$(function(){
 
   console.log('dnoVal---------'+dnoVal);
   console.log('unoVal---------'+unoVal);
   
   if(unoVal===""){
       
        nonlogincheck();
   }else{
    checkHeart();
   }
   
    $("#heartBtn").on("click", function(){
       
       
       if(unoVal===""){
            alert('좋아요 기능은 로그인 후 이용 가능합니다.');          
       }
       else{ 
              if ($(this).prop("disabled") || ajaxRequest !== null) {
                  return;  
              } 
              $(this).prop("disabled", true);  
      
              if ($(this).find("img").attr("src") === "${path}/resources/images/heartImg/heartA.png") {
                  trueBtn(); 
              } else {
                  falseBtn(); 
              }
        
       }
    });
});


function nonlogincheck(){
    ajaxRequest = $.ajax({
        url: "nonlogincheck",
        type: "GET",
        dataType: "json",
        data: {dno: dnoVal},
        error: function(xhr, status, msg) { 
            alert(status + "/noncheckHeart/" + msg); 
        },
        success: function(json) {
            $("#btnImg").empty();
            $.each(json.result, function(idx, heart){
               $("#cntHeart").html(json.result.cntHeartCustomer + " 명의 유저가 이 데이트 코스를 좋아합니다 !")
               $("#heartBtn").find("img").attr("src", "${path}/resources/images/heartImg/heartB.png");
            });
 
        }
    });
}


function checkHeart(){
 
    console.log('.......checkHeart');
    if (ajaxRequest !== null) {
        ajaxRequest.abort();  
    }

    ajaxRequest = $.ajax({
        url: "checkHeart",
        type: "GET",
        dataType: "json",
        data: {dno: dnoVal, uno: unoVal},
        error: function(xhr, status, msg) { 
            alert(status + "/checkHeart/" + msg); 
        },
        success: function(json) {
            $("#btnImg").empty();

            $.each(json.result, function(idx, heart){
               
               $("#cntHeart").html(json.result.cntHeart)
               
                if (json.result.isHeart > 0) {  
                    $("#heartBtn").find("img").attr("src", "${path}/resources/images/heartImg/heartA.png");
                } else if(json.result.isHeart == 0) {
                    console.log('.......else if');  
                    $("#heartBtn").find("img").attr("src", "${path}/resources/images/heartImg/heartB.png");
                }
            });

            $("#heartBtn").prop("disabled", false); 
            ajaxRequest = null;  
        }
    });
}

function insertHeart(){
    console.log('.......insertHeart');
    if (ajaxRequest !== null) {
        ajaxRequest.abort();  
    }

    ajaxRequest = $.ajax({
        url:"insertHeart",
        type:"GET",
        dataType:"json",
        data:{uno:unoVal, dno:dnoVal},
        error: function(xhr,status,msg){
            alert(stataus+"/insertHeart/"+msg);
        },
        success: function() {
            checkHeart();  
        }
    }); 
}

function delHeart(){
    console.log('delHeart.....................');
    if (ajaxRequest !== null) {
        ajaxRequest.abort();  
    }

    ajaxRequest = $.ajax({
        url:"delHeart",
        type:"GET",
        dataType:"json",
        data:{uno:unoVal, dno:dnoVal},
        error: function(xhr,status,msg){
            alert(stataus+"/delHeart/"+msg);
        },
        success: function() {
            checkHeart();  
        }
    });
}

function trueBtn(){
    delHeart();
}

function falseBtn(){
    insertHeart();
}
</script>

  
<div id="heartCenter" style="padding: 0 45%;"> 
    <div id="heartBtnContainer" style="width: 201px; text-align: center;">
    <button id="heartBtn" name="heartBtn" style="width:95px; border:none; background-color:white;">
        <img src="#" alt="좋아요버튼" id="btnImg" style="width:100%;"/> 
    </button>
    <h5 class="zoayo">좋아요</h5>
    <p id="cntHeart">개</p>
    </div>
</div>
<div id="borderLine"></div>
</body>
</html>
<%@include file="reviews.jsp" %>
<%@include file="../inc/footer.jsp" %>