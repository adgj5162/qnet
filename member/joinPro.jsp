<%@page import="qnet.member.MemberDAO"%>
<%@page import="java.sql.Timestamp"%>
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
	
	// 액션태그 사용해서 자바빈 객체 생성/join.jsp에서 불러온 파라미터값 저장
%>
	<jsp:useBean id="mb" class="qnet.member.MemberBean"></jsp:useBean>
	<jsp:setProperty property="*" name="mb"/>
<%	
mb.setReg_date(new Timestamp(System.currentTimeMillis()));

// 디비에 저장
// MemberDAO객체 생성 - insertMember(MemberBean) 생성
MemberDAO mdao = new MemberDAO();
mdao.insertMember(mb);

%>
<script type="text/javascript">
alert("회원 가입 성공!");
location.href="login.jsp";
</script>

</body>
</html>