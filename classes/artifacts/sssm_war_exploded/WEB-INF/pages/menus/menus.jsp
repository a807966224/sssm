<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/ztreev3/css/zTreeStyle/zTreeStyle.css" type="text/css">
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/ztreev3/js/jquery.ztree.core.js"></script>
<title>菜单管理</title>
<SCRIPT type="text/javascript">

	function zOnClick(event, treeId, treeNode) {
		$("#menuForm").submit();
	};
    var setting = {
        data: {
            simpleData: {
                enable: true
            }
        },
        callback: {
        	onClick:zOnClick
        }
    };

    var zNodes = ${menus};

    $(document).ready(function(){
        $.fn.zTree.init($("#treeDemo"), setting, zNodes);
    });
</SCRIPT>
</head>
<body>
<div id="divLeft" style="display: inline;float: left;width:20%;height:100%;"><ul id="treeDemo" class="ztree" style="width:94%;height: 100%;background: #f0f6e4;;border: 1px solid #ddd;"></ul></div>
<div id="divRigth" style="display: inline;float: left;width:80%;height: 100%;">
    <form id="menuForm" data-toggle="ajaxsearch" data-options="{searchDatagrid:$.CurrentNavtab.find('#tablist')}">
    </form>
    <table id="tablist" class="table table-bordered" data-toggle="datagrid" data-options="{
    height: '100%',
	gridTitle: '操作列表',
    dataUrl: '<%=request.getContextPath() %>/menu/pageJson',
    local: 'local',
    showToolbar: 'true',
    toolbarItem:' add,edit,del',
    editMode: {dialog:{width:'800',height:500,title:'用户信息',mask:true}},
    editUrl: '<%=request.getContextPath() %>/users/edit',
    delUrl: '<%=request.getContextPath() %>/users/del',
    delPK: 'id'
}">
        <thead>
        <tr>
            <th data-options="{name:'id',hide:'true'}">id</th>
            <th data-options="{name:'funenname',align:'center',width:120}" >操作编码</th>
            <th data-options="{name:'funchname',align:'center',width:120}">操作名称</th>
            <th data-options="{name:'name',align:'center',width:120}">所属菜单</th>
        </tr>
        </thead>
    </table>
</div>
</body>
</html>