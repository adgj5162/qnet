<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header>
<div id="img">
	<a href="http://www.hrd.go.kr/hrdp/ma/pmmao/indexNew.do"><img src="../images/hrd.jpg" width="100" height="35"></a> 
	<a href="http://www.keis.or.kr/main/index.do"><img src="../images/logo1.png" width="100" height="35"></a> 
	<a href="http://www.hrdkorea.or.kr/"><img id="ksig" src="../images/ksig.jpg" width="100"></a>
</div>

<%
	String id = (String)session.getAttribute("id");
	//세션값 있는지 판단
	if(id != null){
		%>
		<div id="login">
			<a href="#"><%=id %>님 환영합니다.</a> |
			<a href="../member/logout.jsp">로그아웃</a>
		</div>
		<%
	}else{
		%>
		<div id="login">
			<a href="../member/login.jsp">로그인</a> | 
			<a href="../member/join.jsp">회원가입</a>
		</div>
		<%
	}
%>

<!-- <div id="login"> -->
<!-- 	<a href="../member/login.jsp">로그인</a> |  -->
<!-- 	<a href="../member/join.jsp">회원가입</a> -->
<!-- </div> -->

<div class="clear"></div>

<!-- 로고들어가는 곳 -->
<div id="logo1"><a href="../main/main.jsp"><img id="logo" src="../images/qnet.jpg" width="60" height="90" alt="Fun Web"></a>
<img src="../images/tree.jpg" width="340" height="150" id="tree" />
</div>

<div class="clear"></div>

 <table id="top_menu">
  <tr>
	<th><a href="">원서접수</a></th>
	<th><a href="">수험자준비물</a></th>
	<th><a href="../board/notice.jsp">게시판</a></th>
	<th><a href="">시험일정안내</a></th>
	<th><a href="">자료실</a></th>
 </tr>
 </table>
</header>