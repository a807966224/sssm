<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<script>
function onInit(){
		setTimeout(function(){
			aa(1);
		}, 1000);
}
function aa(i){
	document.getElementById("divtimer").innerHTML=i+"s";
	if(i == 1){
		window.location.href="<%=request.getContextPath() %>";
	}
}
</script>
</head>
<body onload="onInit();">
session time out!=====><div id="divtimer">5s</div>
</body>
</html>