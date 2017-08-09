<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ include file="../indexs/_headers.jsp"%>
<script>
$(document).ready(function(){
	$(".btn-default").click(function(){
		BJUI.dialog('close', 'addMenu_dialog');
	});
});
</script>
</head>
<body>
<div class="bjui-pageContent">
    <div class="bs-example">
        <form action="<%=request.getContextPath() %>/menu/save" class="datagrid-edit-form" data-toggle="validate">
            <input type='hidden' name="id" value="${beans.id }" />
            <div class="bjui-row col-2">
                <label class="row-label">菜单名称</label>
                <div class="row-input required">
                    <input type="text" name="name" value="${beans.name }" data-rule="required">
                </div>
                <label class="row-label">菜单URL</label>
                <div class="row-input required">
                    <input type="text" name="url" value="${beans.url }" data-rule="required">
                </div>
                <c:if test="${beans.id == null || beans.id == '' }">
	                <label class="row-label">上级菜单</label>
	                <div class="row-input">
	                	<input type="hidden" name="level" value="${beans.level+1 }">
	                    <input type="hidden" name="pId" value="${beans.pId }">
	                    <input type="text" readonly="readonly" value="${beans.pName }">
	                </div>
                </c:if>
                <c:if test="${beans.id != null && beans.id != '' }">
                	<input type="hidden" name="level" value="${beans.level }">
                    <input type="hidden" name="pId" value="${beans.pId }">
                </c:if>
            </div>
        </form>
    </div>
</div>
<div class="bjui-pageFooter">
    <ul>
        <li><button type="button" class="btn-close" data-icon="close">取消</button></li>
        <li><button type="submit" class="btn-default" data-icon="save">保存</button></li>
    </ul>
</div>
</body>
</html>