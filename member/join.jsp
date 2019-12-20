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
 	
<script type="text/javascript">
	function fun1(){
		// alert("중복체크 버튼 작동")
		
		if(document.fr.id.value == ""){
			alert("아이디를 입력하세요!");
			document.fr.id.focus();
			return;
		}
		// 새창을 열어서 아이디를 체크
		var fid = document.fr.id.value;
		
		window.open("joinIdCheck.jsp?userid="+fid, "", "width=400, height=200");
	}
	
	function fun2(){
		// 주민번호 앞자리6자리 일경우, ju2 포커스
		if(document.fr.ju1.value.length == 6){
			document.fr.ju2.focus();
			return;
		}
	}
	
	function fun3(){
		//onsubmit 이벤트 발생시 
		if(document.fr.id.value.length < 1){
			alert("아이디를 입력하시오");
			document.fr.id.focus();
			return false;
		}
				
		if(document.fr.pass.value == ""){
			alert("비밀번호를 입력하시오");
			document.fr.pass.focus();
			return false;
		}
		
		if(document.fr.passck.value.length < 1){
			alert("비밀번호 확인을 입력하시오");
			document.fr.passck.focus();
			return false;
		}
		
		if(document.fr.pass.value != document.fr.passck.value){
			alert("비밀번호가 일치하지 않습니다");
			document.fr.pass.focus();
			return false;
		}
		
		if(document.fr.name.value.length < 1){
			alert("이름을 입력하시오");
			document.fr.name.focus();
			return false;
		}
		
		if(document.fr.ju1.value.length != 6){
			alert("주민번호 앞6자리를 입력하시오");
			document.fr.ju1.focus();
			return false;
		}
		
		if(document.fr.ju2.value.length != 7){
			alert("주민번호 뒷7자리를 입력하시오");
			document.fr.ju2.focus();
			return false;
		}
		
		if(document.fr.gender[0].checked == false &&
			document.fr.gender[1].checked == false){
			alert("성별을 체크해주십시오");
			return false;
		}
		
		if(document.fr.nation[0].checked == false &&
			document.fr.nation[1].checked == false){
			alert("국적란에 체크해주십시오");
			return false;
		}
		
		if(document.fr.phone.value.length < 1){
			alert("휴대번호를 입력하십시오");
			document.fr.email.focus();
			return false;
		}
	}
</script>
</head>
<body>
<div id="wrap">
<!-- 헤더들어가는 곳 -->
<jsp:include page="../inc/top.jsp"/>
<!-- 헤더들어가는 곳 -->
<div class="clear"></div>
<!-- 본문들어가는 곳 -->
<!-- 본문내용 -->
<div class="join">
<h2><li class="blue-text">회원가입</li></h2>
</div>

<div class="clear"></div>

<div id="joinn">
<fieldset>
<form action="joinPro.jsp" id="join" method="post" name="fr" onsubmit="return fun3()">
<label>아이디</label>
<input type="text" name="id">
<input type="button" value="아이디  중복체크" class="dup" onclick="fun1()"><br>
<div class="clear"></div>
<label>비밀번호</label>
<input type="password" name="pass"><br>
<div class="clear"></div>
<label>비밀번호 확인</label>
<input type="password" name="passck"><br>
<div class="clear"></div>
<label>이름</label>
<input type="text" name="name"><br>
<div class="clear"></div>
<label>주민번호</label>
<input type="text" name="ju1" onkeyup="fun2()">-<input type="password" name="ju2"><br>
<div class="clear"></div>
<label>성별</label>
<input type="radio" name="gender" value="남">남
<input type="radio" name="gender" value="여">여<br><br>
<div class="clear"></div>
<label>국적</label>
<input type="radio" name="nation" value="내국인">내국인
<input type="radio" name="nation" value="외국인">외국인<br><br>
<div class="clear"></div>
<label>휴대번호</label>
<input type="text" name="phone"><br>
<div class="clear"></div>
<!-- <label>&nbsp;&nbsp;&nbsp;전화번호</label> -->
<!-- <input type="text" name="call"><br> -->
<!-- <div class="clear"></div> -->
<!-- <label>&nbsp;&nbsp;&nbsp;이메일</label> -->
<!-- <input type="text" name="email"><br> -->
<!-- <div class="clear"></div> -->
<div id="buttons">
<input type="submit" value="회원가입" class="submit">
<input type="button" value="가입취소" onclick="location.href='../main/main.jsp'" class="cancel">
</div>
</form>
</fieldset>

</div>
</div>

<div class="clear"></div>
<!-- 푸터들어가는 곳 -->
<jsp:include page="../inc/bottom.jsp" />
<!-- 푸터들어가는 곳 -->

</body>
</html>