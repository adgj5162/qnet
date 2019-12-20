<%@page import="qnet.member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
//액션태그 사용해서 자바빈 객체 생성/join.jsp에서 불러온 파라미터값 저장
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	
	// MemberDAO 생성
	MemberDAO mdao = new MemberDAO();
	int check = mdao.idCheck(id,pass);
	// Check로 회원인가를 판단
	if(check == 1){
		//세션 객체에 아이디값을 저장
		session.setAttribute("id", id);
		response.sendRedirect("../main/main.jsp");
	}else if(check == 0){
		%>
		<script type="text/javascript">
		alert("비밀번호 오류!");
		history.back();
		</script>
		<%
	}else{
		%>
		<script type="text/javascript">
		alert("존재하지 않는 아이디입니다");
		history.back();
		</script>
		<%
	}
%>

</body>
</html>