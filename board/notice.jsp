<%@page import="qnet.board.BoardBean"%>
<%@page import="java.util.List"%>
<%@page import="qnet.board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../css/default.css" rel="stylesheet" type="text/css">
<link href="../css/subpage.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
	
</script>
</head>
<body>
<div id="wrap">
<!-- 헤더들어가는 곳 -->
<jsp:include page="../inc/top.jsp"/>
<!-- 헤더들어가는 곳 -->
<div class="clear"></div>
<!-- 본문들어가는 곳 -->
<div class="join">
<h2><li class="blue-text">게시판</li></h2>
</div>
<div class="clear"></div>
<%
	BoardDAO bdao = new BoardDAO();

	int count = bdao.getBoardCount();
	
	// 한 페이지에서 보여줄 글의 개수
	int pageSize = 10;
	
	String pageNum = request.getParameter("pageNum");
	if(pageNum == null){
		pageNum = "1";		// pageNum의 값이 없을경우 무조건 1페이지
	}
	
	int currentPage = Integer.parseInt(pageNum);
	int startRow = (currentPage - 1)*pageSize + 1;
	int endRow = currentPage*pageSize;
	
	/*******************************************/
	
	List boardList = null;
	
	if(count != 0){
		boardList = bdao.getBoardList(startRow,pageSize);
	}
		
%>
<div id="notice">
<table id="notice">
<tr>
	<th>번호</th>
	<th>제목</th>
	<th>게시자</th>
	<th>게시일</th>	
</tr>
<%
	if(count != 0){
		for(int i=0; i<boardList.size(); i++){
			BoardBean bb = (BoardBean)boardList.get(i);
%>
<tr>
	<td><%= %></td>
	<td></td>
</tr>
		}
	}
	


</table>
<!-- 글쓰기 버튼 -->
<%
	String id = (String)session.getAttribute("id");
	if(id != null){
%>
	<input type="button" value="글쓰기" class="" 
	onclick="location.href='write.jsp'">
<%}%>
</div>

<div id="table_search">
<input type="text" name="search" class="">
<input type="button" name="search" class="">
</div>

<div class="clear"></div>



<!-- 푸터들어가는 곳 -->
<jsp:include page="../inc/bottom.jsp" />
<!-- 푸터들어가는 곳 -->
</div>
</body>
</html>