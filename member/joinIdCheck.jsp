<%@page import="qnet.member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function fun1(){
		//ID값 저장
		opener.document.fr.id.value = document.wfr.userid.value;
		
		//창닫기
		window.close();
	}


</script>
</head>
<body>
<%
String id = request.getParameter("userid");

MemberDAO mdao = new MemberDAO();
int check = mdao.JoinIdCheck(id);

// 결과값 0/1 리턴
if(check == 1){
	out.print("사용중인 아이디입니다.");
}else{
	out.print("사용 가능한 아이디 입니다.");
	%>
	<input type="button" value="아이디 사용하기" onclick="fun1();">
	<%
}	

%>
<hr>
<form action="joinIdCheck.jsp" name="wfr" method="post" >
<input type="text" name="userid" value="<%=id%>">
<input type="submit" value="중복확인">
</form>
</body>
</html>