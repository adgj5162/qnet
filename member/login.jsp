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
	function fun1(){
		if(document.loglog.id.value.length < 1){
			alert("아이디를 입력하십시오");
			document.loglog.id.focus();
			return;
		}
		
		if(document.loglog.pass.value.length < 1){
				
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
<h2><li class = "blue-text">로그인</li>사이트를 이용하기 위해서는 로그인이 필요합니다.</h2>
</div>

<div class="clear"></div>

<div id="log">
<fieldset>
<form action="loginPro.jsp" id="join" method="post" name="loglog">
<label>아이디</label>
<input type="text" name="id"><br>
<div class="clear"></div>
<label>비밀번호</label>
<input type="password" name="pass"><br>

<div id="buttons">
<input type="submit" value="로그인" class="submit" onclick="fun1()">
<input type="reset" value="취소" class="cancel">
</div>
</form>
</fieldset>
<p id="loggin">
최근 우리공단은 첨단 전자기기 등에 의한 국가자격시험 부정행위 예방을 강화하고 <br>
 있으며, 부정한 방법으로 시험을 치른 자는 응시자격 정지, 시험무효 및 합격취소,<br>
 경찰 수사의뢰 등 강력조치 할 계획이오니 국가자격 시험 공신력 확보를 위해 적극 <br>
 협조해주시기 바랍니다.
</p>
</div>
</div>

<div class="clear"></div>
<!-- 푸터들어가는 곳 -->
<jsp:include page="../inc/bottom.jsp" />
<!-- 푸터들어가는 곳 -->

</body>
</html>