<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>用户列表</title>
</head>
<body>
<table class="table table-bordered" data-toggle="datagrid" data-options="{
    height: '100%',
	gridTitle: '用户列表',
    dataUrl: '<%=request.getContextPath() %>/users/pageJson',
    local: 'local',
    showToolbar: 'true',
    toolbarItem:'${excuteName}',
    toolbarCustom: '添加菜单',
    editMode: {dialog:{width:'800',height:500,title:'用户信息',mask:true}},
    editUrl: '<%=request.getContextPath() %>/users/edit',
    delUrl: '<%=request.getContextPath() %>/users/del',
    delPK: 'id'
}">
    <thead>
        <tr>
            <th data-options="{name:'id',hide:'true'}">id</th>
            <th data-options="{name:'state',align:'center',width:70,render:function(value,data){if(value == '1'){return '正常';}else{ return '停用';}}}" >状态</th>
            <th data-options="{name:'username',align:'center',width:120}">用户名</th>
        </tr>
    </thead>
</table>


</body>
</html>