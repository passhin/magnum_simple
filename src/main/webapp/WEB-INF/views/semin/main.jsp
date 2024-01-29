<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../inc/header.jsp"%>
<script>
 
   let result = '${success}';
   console.log(result);
   if(result != "") {
      alert(result);
   }
  
</script>

<!-- 임시 보여주는 코드 -->
<div class="container">
	<h2>오늘의 BEST 플레이스</h2>

	<div class="row">
		<!-- 캐러셀 -->
		<!-- 캐러셀 -->
		<!-- 캐러셀 -->
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner">
				<div class="item active">
					<div class="row">
						<div class="col-sm-4">
							<div class="fakeimg">
								<img
									src="${pageContext.request.contextPath}/resources/images/1no1.jpg"
									alt="Los Angeles">
							</div>
							<p>멜리샤 호텔</p>
						</div>

						<div class="col-sm-4">
							<div class="fakeimg">
								<img
									src="${pageContext.request.contextPath}/resources/images/2no1.jpg"
									alt="Los Angeles">
							</div>
							<p>캠퍼스 호텔</p>
						</div>
						<div class="col-sm-4">
							<div class="fakeimg">
								<img
									src="${pageContext.request.contextPath}/resources/images/3no1.jpg"
									alt="Los Angeles">
							</div>
							<p>고에몬</p>
						</div>
					</div>
				</div>

				<div class="item">
					<div class="col-sm-4">
						<div class="fakeimg">
							<img
								src="${pageContext.request.contextPath}/resources/images/4no1.jpg"
								alt="Los Angeles">
						</div>
						<p>마녀교육</p>
					</div>
					<div class="col-sm-4">
						<div class="fakeimg">
							<img
								src="${pageContext.request.contextPath}/resources/images/5no1.jpg"
								alt="Los Angeles">
						</div>
						<p>메가MGC커피 강남역점</p>
					</div>
					<div class="col-sm-4">
						<div class="fakeimg">
							<img
								src="${pageContext.request.contextPath}/resources/images/6no1.jpg"
								alt="Los Angeles">
						</div>
						<p>빽다방 강남역지하로점</p>
					</div>
				</div>


				<div class="item">
					<div class="col-sm-4">
						<div class="fakeimg">
							<img
								src="${pageContext.request.contextPath}/resources/images/51no3.jpg"
								alt="Los Angeles">
						</div>
						<p>부티크나인호텔</p>
					</div>
					<div class="col-sm-4">
						<div class="fakeimg">
							<img
								src="${pageContext.request.contextPath}/resources/images/60no3.jpg"
								alt="Los Angeles">
						</div>
						<p>선농단역사문화관</p>
					</div>
					<div class="col-sm-4">
						<div class="fakeimg">
							<img
								src="${pageContext.request.contextPath}/resources/images/17no2.jpg"
								alt="Los Angeles">
						</div>
						<p>디도 재즈 라운지</p>
					</div>
				</div>
			</div>

			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>

	</div>
</div>
<!-- 캐러셀 -->
<!-- 캐러셀 -->
<!-- 캐러셀 -->


<div class="container">
	<h5>숙소 베스트</h5>
	<div class="row">
		<div class="col-sm-3">
			<div class="fakeimg">
				<img
					src="${pageContext.request.contextPath}/resources/images/51no1.jpg"
					alt="Los Angeles">
			</div>
			<p>부티크나인호텔(신설동역)</p>
			<p>체크인 15:00</p>
			<p>체크아웃 12:00</p>
		</div>

		<div class="col-sm-3">
			<div class="fakeimg">
				<img
					src="${pageContext.request.contextPath}/resources/images/22no2.jpg"
					alt="Los Angeles">
			</div>
			<p>플레티넘 호텔(신림역)</p>
			<p>체크인 15:00</p>
			<p>체크아웃 11:00</p>
		</div>

		<div class="col-sm-3">
			<div class="fakeimg">
				<img
					src="${pageContext.request.contextPath}/resources/images/31no4.jpg"
					alt="Los Angeles">
			</div>
			<p>밀레니엄 호텔(신촌역)</p>
			<p>체크인 15:00</p>
			<p>체크아웃 11:00</p>
		</div>

		<div class="col-sm-3">
			<div class="fakeimg">
				<img
					src="${pageContext.request.contextPath}/resources/images/41no1.jpg"
					alt="Los Angeles">
			</div>
			<p>킹스포드 호텔(역삼역)</p>
			<p>체크인 15:00</p>
			<p>체크아웃 11:00</p>
		</div>

	</div>
</div>





<div class="container">
	<h5>식사 베스트</h5>
	<div class="col-sm-3">
		<div class="fakeimg">
			<img
				src="${pageContext.request.contextPath}/resources/images/13no4.jpg"
				alt="Los Angeles">
		</div>
		<p>강변나주곰탕(건대입구역)</p>
		<p>나주곰탕 체인점중에 제일 맛나고 다른메뉴가 많아 손님이 많음</p>
		<p>2인예상가격 : 25,000</p>
	</div>

	<div class="col-sm-3">
		<div class="fakeimg">
			<img
				src="${pageContext.request.contextPath}/resources/images/14no4.jpg"
				alt="Los Angeles">
		</div>
		<p>산골닭갈비(강변역)</p>
		<p>닭갈비는 춘천말고 산골!</p>
		<p>2인예상가격 : 30,000</p>
	</div>

	<div class="col-sm-3">
		<div class="fakeimg">
			<img
				src="${pageContext.request.contextPath}/resources/images/4no3.jpg"
				alt="Los Angeles">
		</div>
		<p>마녀교육(강남역)</p>
		<p>덮밥 볶음밥 맛집</p>
		<p>2인예상가격 : 30,000</p>
	</div>

	<div class="col-sm-3">
		<div class="fakeimg">
			<img
				src="${pageContext.request.contextPath}/resources/images/3no4.jpg"
				alt="Los Angeles">
		</div>
		<p>고에몬(홍대입구역)</p>
		<p>수플레 오믈렛이 맛있는 고에몬</p>
		<p>2인예상가격 : 40,000</p>
	</div>
</div>
<!-- 임시 보여주는 코드 -->

<!-- 실제보여주는 코드 
    <div class="container">
  <h2>오늘의 BEST 플레이스</h2>
  <div class="row">
    <c:forEach var="course" items="${courseList}">
      <div class="col-sm-4">
        <div class="fakeimg">Fake Image</div>
        <p>${course}</p>
      </div>
    </c:forEach>
  </div>
</div>

<div class="container">
  <h5>숙소 베스트</h5>
  <div class="row">
    <c:forEach var="accommodation" items="${accommodationList}">
      <div class="col-sm-3">
        <div class="fakeimg">Fake Image</div>
        <p>${accommodation}</p>
      </div>
    </c:forEach>
  </div>
</div>

<div class="container">
  <h5>식사 베스트</h5>
  <div class="row">
    <c:forEach var="meal" items="${mealList}">
      <div class="col-sm-3">
        <div class="fakeimg">Fake Image</div>
        <p>${meal}</p>
      </div>
    </c:forEach>
  </div>
</div>
   -->

<%@ include file="../inc/footer.jsp"%>
    
