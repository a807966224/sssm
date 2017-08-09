<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="../indexs/_headers.jsp"%>
</head>
<body>
<table class="table table-bordered" data-toggle="datagrid" data-options="{
    height: '100%',
	gridTitle: '用户列表',
    dataUrl: '<%=request.getContextPath() %>/users/pageJson',
    local: 'local',
    showToolbar: 'true',
    toolbarItem:'${excuteName}',
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