<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ include file="../indexs/_headers.jsp"%>
<SCRIPT type="text/javascript">
		var setting = {
			check: {
				enable: true
			},
			data: {
				simpleData: {
					enable: true
				}
			}/* ,
			callback: {
				onCheck: zTreeOnCheck
			} */
		};

		/* function zTreeOnCheck(event, treeId, treeNode) {
		    alert(treeNode.tId + ", " + treeNode.name + "," + treeNode.checked+","+treeNode.type);
		}; */
		
		var zNodes = ${treeList};
		
		$(document).ready(function(){
			$.fn.zTree.init($("#tree"), setting, zNodes);
			$(".btn-default").click(function(){
				var treeObj = $.fn.zTree.getZTreeObj("tree");
				var nodes = treeObj.getCheckedNodes(true);
				var menus = new Array();
				var opts = new Array();
				for(var i=1,j=nodes.length;i<j;i++){
					if(nodes[i].type == 1){
						menus.push(nodes[i].id);
					}
					if(nodes[i].type == 2){
						opts.push(nodes[i].id);
					}
				}
				$("#menus").val(menus);
				$("#opts").val(opts);
				$("#editForm").submit();
			});
		});
	</SCRIPT>
	<style>
		.bs-example:after {content:"";}
		.node_name {font-size: 16px;}
	</style>
</head>
<body>
<div class="bjui-pageContent">
    <div class="bs-example">
        <form id="editForm" action="<%=request.getContextPath() %>/roles/submit" class="datagrid-edit-form" data-toggle="validate">
            <input type='hidden' name="id" value="${beans.id }" />
            <input type='hidden' id="menus" name="menus" value="" />
            <input type='hidden' id="opts" name="opts" value="" />
            <div class="bjui-row col-2 mydiv ">
                <label class="row-label">角色名称</label>
                <div class="row-input required">
                    <input type="text" name="authName" value="${beans.authName }" data-rule="required">
                </div>
                <label class="row-label">
					<ul id="tree" class="ztree"></ul>
				</label>
            </div>
        </form>
    </div>
</div>
<div class="bjui-pageFooter">
    <ul>
        <li><button type="button" class="btn-close" data-icon="close">取消</button></li>
        <li><button type="button" class="btn-default" data-icon="save">保存</button></li>
    </ul>
</div>
</body>
</html>