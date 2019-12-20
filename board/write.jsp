<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../css/default.css" rel="stylesheet" type="text/css">
<link href="../css/subpage.css" rel="stylesheet" type="text/css">
<!--[if lt IE 9]>
<script src="http://ie7-js.googlecode.com/svn/version/2.1(beta4)/IE9.js" type="text/javascript"></script>
<script src="http://ie7-js.googlecode.com/svn/version/2.1(beta4)/ie7-squish.js" type="text/javascript"></script>
<script src="http://html5shim.googlecode.com/svn/trunk/html5.js" type="text/javascript"></script>
<![endif]-->
<!--[if IE 6]>
 <script src="../script/DD_belatedPNG_0.0.8a.js"></script>
 <script>
   /* EXAMPLE */
   DD_belatedPNG.fix('#wrap');
   DD_belatedPNG.fix('#main_img');   

 </script>
 <![endif]-->
</head>
<body>
<div id="wrap">
<!-- 헤더들어가는 곳 -->
<jsp:include page="../inc/top.jsp"/>
<!-- 헤더들어가는 곳 -->
<div class="clear"></div>
<!-- 본문들어가는 곳 -->
<div class="join">
<h2><li class="blue-text">글 작성</li></h2>
</div>
<%
	// 게시판 글을 작성하기 위해서는 반드시 로그인을 한 사람만 글쓰기 가능
	
	// 세션값 -> ID값이 있는가 판단
	// 없을 경우 로그인 페이지로 이동
	String id = (String)session.getAttribute("id");
	
	if(id == null){
		response.sendRedirect("../member/login.jsp");
	}
%>

<!-- 게시판 -->


 <table id="notice">
  <tr>
   <td>이름</td><td><%=id%></td>
  </tr>
 <tr>
   <td>제목</td><td><input type="text" name="subject"></td>
  </tr>
  <tr>
   <td>내용</td><td><textarea rows="10" cols="20" name="content"></textarea></td>
  </tr>
 </table>
  
 <div class="clear"></div>
<form action="writePro.jsp" method="post" name="fr">
<div id="table_search">
<input type="submit" value="글쓰기" class="btn">
<input type="reset" value="다시쓰기" class="btn">
<input type="button" value="글목록" class="btn" onclick="location.href='notice.jsp'">
</div>
</form>

<div class="clear"></div>
<div id="page_control">

</div>

<!-- 게시판 -->
<!-- 본문들어가는 곳 -->
<div class="clear"></div>
<!-- 푸터들어가는 곳 -->
<jsp:include page="../inc/bottom.jsp"/>
<!-- 푸터들어가는 곳 -->
</div>
</body>
</html>