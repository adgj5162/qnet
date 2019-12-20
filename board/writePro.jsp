<%@page import="qnet.board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>WebContent/board/writePro.jsp</h1>

<%
// 글쓰기동작
request.setCharacterEncoding("UTF-8");

// 이름, 제목, 내용 -> 저장
%>
	<jsp:useBean id="bb" class="qnet.board.BoardBean"></jsp:useBean>
	<jsp:getProperty property="*" name="bb"/>
<%
	BoardDAO bdao = new BoardDAO();
	bdao.insertBoard(bb);
	
	// 페이지로 이동
	response.sendRedirect("notice.jsp");
%>

</body>
</html>