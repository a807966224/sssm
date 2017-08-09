<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <c:set var="_title" value="${index_title}" />
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/ztreev3/css/zTreeStyle/zTreeStyle.css" type="text/css">
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/ztreev3/js/jquery.ztree.core.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/ztreev3/js/jquery.ztree.excheck.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>${_title}</title>
        <script>
            $(document).ready(function(){
                //alert('${index_title}');
            });
        </script>

