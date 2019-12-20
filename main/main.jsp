<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../js/jquery-3.4.1.min.js"></script>
<script src="../js/jquery.innerfade.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#inner_fade').innerfade({
			animationtype: 'fade',
			speed: 'slow'
			});
	});
</script>
<link href="../css/default.css" rel="stylesheet" type="text/css">
<link href="../css/front.css" rel="stylesheet" type="text/css">

<!--[if lt IE 9]>
<script src="http://ie7-js.googlecode.com/svn/version/2.1(beta4)/IE9.js" type="text/javascript"></script>
<script src="http://ie7-js.googlecode.com/svn/version/2.1(beta4)/ie7-squish.js" type="text/javascript"></script>
<script src="http://html5shim.googlecode.com/svn/trunk/html5.js" type="text/javascript"></script>
<![endif]-->

<!--[if IE 6]>
 <script src="script/DD_belatedPNG_0.0.8a.js"></script>
 <script>
   /* EXAMPLE */
   DD_belatedPNG.fix('#wrap');
   DD_belatedPNG.fix('#main_img');   

 </script>
 <![endif]--> 
</head>
<body>
<div id="wrap">
<!-- 헤더파일들어가는 곳 -->
<jsp:include page="../inc/top.jsp"/>
<!-- 헤더파일들어가는 곳 -->
<!-- 메인이미지 들어가는곳 -->
<div class="clear"></div>
<!-- <div id="../images/main_img"><img src="../images/main_img.jpg"
 width="971" height="282"></div> -->

<!-- 메인이미지 들어가는곳 -->
<!-- 메인 콘텐츠 들어가는 곳 -->
<article id="front">
<div id="solution">
<div id="security">
<ul id="inner_fade">
	<li><img src="../images/ban1.jpg"></li>
	<li><img src="../images/ban2.jpg"></li>
	<li><img src="../images/ban3.jpg"></li>
</ul>
</div>
<div id="hosting">
<h3>시험일정안내</h3>
<ul>
 <li>정기 기사 2회 실기시험(6.29~7.12)</li><br>
 <li>(오전 9:00)‎ 기술사 118회 면접시험(7.13~7.22)</li><br>
 <li>정기 기사 3회 필기 원서접수(7.5~7.11)</li><br>
 <li>(오전 9:00)‎ 공인노무사 2,3차 원서접수(7.8~7.17)</li><br>
 <li>(오전 9:00)‎ 제27회 청소년지도사 1차 원서접수(7.8~7.17)</li><br>
 <li>기술사 118회 면접시험(7.13~7.22)</li><br>
 <li>오전 9시 정기 기능사 3회 필기 합격자 발표(7.26)</li><br>
 <li>(오전 9:00)‎ 변리사 2차시험(7.27~7.28)</li><br>
 <li>정기 기능사 3회 필기시험(7.13~7.21)</li><br>
 <li><a href="">...더보기</a></li>
</ul>
</div>
</div>
<div class="clear"></div>

<div>
<table border="1" class="table">
<tr>
<td rowspan="2" id="t1">
<h3>고객지원</h3>
<ul>
<li>전화 또는 문자상담(40자 이내)<br>
<p>1644 - 8000</p></li><br>
<li>평일 : 09:00 ~ 18:00 (월~금)</li><br>
<li>휴일 : 토,일요일 및 공휴일은 쉽니다.</li>
</ul>
</td><td id="t2"><h4>처음 방문하셨나요?</h4><br>
<ul>
<li>큐넷 서비스를 미리 체험해보고<br>
사이트를 쉽고 빠르게 이용할 수 있는<br> 
이용 안내, <a href="http://www.q-net.or.kr/qnet/html/guideQnet/guide_01.html">큐넷 길라잡이를 제공.</a></li>
</ul></td>
</tr>
<tr id="t3">
<td><a href="https://c.q-net.or.kr/cmn/com/main.do"><img src="../images/cbq.jpg"></a></td>
</tr>
</table>
</div>
</article>
<!-- 메인 콘텐츠 들어가는 곳 -->
<div class="clear"></div>
<!-- 푸터 들어가는 곳 -->
<jsp:include page="../inc/bottom.jsp" />
<!-- 푸터 들어가는 곳 -->
</div>
</body>
</html>