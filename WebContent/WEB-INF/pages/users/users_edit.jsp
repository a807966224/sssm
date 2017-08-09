<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ include file="../indexs/_headers.jsp"%>
</head>
<body>
<div class="bjui-pageContent">
    <div class="bs-example">
        <form action="<%=request.getContextPath() %>/users/submit" class="datagrid-edit-form" data-toggle="validate">
            <input type='hidden' name="id" value="${beans.id }" />
            <div class="bjui-row col-2">
                <label class="row-label">用户名</label>
                <div class="row-input required">
                    <input type="text" name="username" value="${beans.username }" data-rule="required">
                </div>
                <label class="row-label">密码</label>
                <div class="row-input required">
                    <input type="text" name="password" value="${beans.password }" data-rule="required">
                </div>
                <label class="row-label">状态</label>
                <div class="row-input required">
                    <select name="state" data-toggle="selectpicker" data-rule="required" data-width="100%">
                        <option value="1" <c:if test="${beans.state == 1 }">selected</c:if> >正常</option>
                        <option value="2" <c:if test="${beans.state == 2 }">selected</c:if>>停用</option>
                    </select>
                </div>
                <label class="row-label">角色</label>
			    <div class="row-input required">
			    	<c:forEach items="${auths }" var="auth" varStatus="i"  >
						<input 
							<c:forEach items="${myAuths }" var="myAuth" >
								<c:if test="${myAuth.authname == auth.authname }">checked</c:if>
							</c:forEach>
						 type="checkbox" name="roles" value="${auth.id }" data-toggle="icheck" data-label="${auth.authname }">			    
			   		</c:forEach>
			    </div>
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