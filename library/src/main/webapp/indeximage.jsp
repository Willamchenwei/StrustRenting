<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
<script type="text/javascript">
	function reloadCode () {
		var time = new Date ().getTime ();
		document.getElementById("imagecode").src="createImageAction.action?d="+time;
	}
</script>
	<form action="" method = "post">
		验证码：<input type = "text" name = "checkcode"/> <br>
		<img alt="验证码" src="createImageAction.action" id = "imagecode" /> <br>
	    <a href="javascript: reloadCode();">看不清楚</a><br>
   	    <input type="submit" value="提交">
	</form>
</body>
</html>