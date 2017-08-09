<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ include file="../indexs/_headers.jsp"%>
</head>
<body>
<table class="table table-bordered" data-toggle="datagrid" data-options="{
    height: '100%',
	gridTitle: '角色列表',
    dataUrl: '<%=request.getContextPath() %>/roles/pageJson',
    local: 'local',
    showToolbar: 'true',
    toolbarItem:'${excuteName}',
    editMode: {dialog:{width:'800',height:500,title:'角色信息',mask:true}},
    editUrl: '<%=request.getContextPath() %>/roles/edit',
    delUrl: '<%=request.getContextPath() %>/roles/del',
    delPK: 'id'
}">
    <thead>
        <tr>
            <th data-options="{name:'id',hide:'true'}">id</th>
            <th data-options="{name:'authName',align:'center',width:120}">角色名称</th>
        </tr>
    </thead>
</table>


</body>
</html>