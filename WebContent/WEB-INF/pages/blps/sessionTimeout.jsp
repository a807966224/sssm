<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ include file="../indexs/_headers.jsp"%>
<script>
function onInit(){
		setTimeout(function(){
			changeSs(1);
		}, 1000);
}
function changeSs(i){
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