<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ include file="../indexs/_headers.jsp"%>
</head>
<body>
no access!==
<c:url var="logoutUrl" value="/logout" />
<a href="${logoutUrl}">注销登陆</a>
</body>
</html>