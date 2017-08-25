<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ include file="../indexs/_headers.jsp"%>
<SCRIPT type="text/javascript">

	function zOnClick(event, treeId, treeNode) {
		$("#id").val(treeNode.id);
		$("#level").val(treeNode.level);
		$("#menuForm").submit();
	}

    var setting = {
        async: {
            enable: true,
            url: getUrl,
            dataFilter: filter
        },
        data: {
            simpleData: {
                enable: true
            }
        },
        callback: {
            onClick:zOnClick
        }
    };

    var zNodes =[
        {name:"菜单根部", id:"0",pId:"-1",isParent:true}
    ];

    function getUrl(treeId, treeNode) {
        var param = "pId="+treeNode.id;
        return "<%=request.getContextPath()%>/menu/findMenus?" + param;
    }
    function filter(treeId, parentNode, childNodes) {
        if (!childNodes) return null;
        for (var i=0, l=childNodes.length; i<l; i++) {
            childNodes[i].name = childNodes[i].name.replace(/\.n/g, '.');
            childNodes[i].isParent = childNodes[i].level=='1'?true:false;
        }
        return childNodes;
    }
    $(document).ready(function(){
        $.fn.zTree.init($("#treeMenu"), setting, zNodes);

    });
    var myButtons = '<button type="button" class="btn btn-blue" data-icon="plus" onclick="addMenu();"><i class="fa fa-plus"></i> 添加菜单</button>'
    	+' <button type="button" class="btn btn-green" data-icon="edit" onclick="updateMenu();"><i class="fa fa-edit"></i> 编辑菜单</button>'
		+'			 <button type="button" class="btn btn-red" data-icon="times" onclick="delMenu();"><i class="fa fa-times"></i> 删除菜单</button>'
		+'			 <button type="button" class="btn btn-blue" data-icon="plus" onclick="addOpt();"><i class="fa fa-plus"></i> 添加操作</button>'
		+'			 <button type="button" class="btn btn-green" data-icon="edit" onclick="updateOpt();"><i class="fa fa-edit"></i> 编辑操作</button>'
		+'			 <button type="button" class="btn btn-red" data-icon="times" onclick="delOpt();"><i class="fa fa-times"></i> 删除操作</button>';
	function addMenu(){
		var treeObj = $.fn.zTree.getZTreeObj("treeMenu");
		var nodes = treeObj.getSelectedNodes();
		if(nodes.length == 0){
			alert('请选择菜单节点进行添加');
		}else{
			BJUI.dialog({
			    id:'addMenu_dialog',
			    url:'<%=request.getContextPath()%>/menu/menuEdit',
			    title:'添加菜单',
			    type:'POST',
			    data:{"pId":nodes[0].pId,"pName":nodes[0].name,"level":nodes[0].level},
			    width:'800',
			    height:'500',
			    onClose:'function(){closeAddMenu_dialog()}',
			})
		}
	}
	function closeAddMenu_dialog(){
		var zTree = $.fn.zTree.getZTreeObj("treeMenu");
		var type = "refresh";
        zTree.reAsyncChildNodes(null, type);
	}
	function updateMenu(){
        var treeObj = $.fn.zTree.getZTreeObj("treeMenu");
		var nodes = treeObj.getSelectedNodes();
		if(nodes.length == 0){
			alert('请选择菜单节点进行修改');
		}else{
			BJUI.dialog({
			    id:'addMenu_dialog',
			    url:'<%=request.getContextPath()%>/menu/menuEdit',
			    title:'修改菜单',
			    type:'POST',
			    data:{"pId":nodes[0].pId,"pName":nodes[0].name,"level":nodes[0].level,"id":nodes[0].id},
			    width:'800',
			    height:'500',
			    onClose:'function(){closeAddMenu_dialog()}',
			})
		}
	}
	function delMenu(){
		var treeObj = $.fn.zTree.getZTreeObj("treeMenu");
		var nodes = treeObj.getSelectedNodes();
		if(nodes.length == 0){
			alert('请选择菜单节点进行添加');
		}else{
			var url = "<%=request.getContextPath()%>/menu/del?id="+nodes[0].id;
			var param = {};
			$.post(url,param,function(result){
				if(result){
					closeAddMenu_dialog();
				}else{
					
				}
			});
		}
	}
	function addOpt(){
		var treeObj = $.fn.zTree.getZTreeObj("treeMenu");
		var nodes = treeObj.getSelectedNodes();
		if(nodes.length == 0){
			alert('请选择菜单节点进行添加');
		}else{
			BJUI.dialog({
			    id:'addOpt_dialog',
			    url:'<%=request.getContextPath()%>/menu/optEdit',
			    title:'添加操作',
			    type:'POST',
			    data:{"menu_id":nodes[0].id},
			    width:'800',
			    height:'500',
			    onClose:'function(){closeAddMenu_dialog();$("#menuForm").submit();}',
			})
		}
	}
	function updateOpt(){
		var s_row = $("#tablist").data('selectedTrs');
		if(s_row == null){
			alert('请选择操作行');
		}
		var prefixStr = "<td data-title='No.' align='center' class='datagrid-linenumber-td'><div>";
		var tmpStr = s_row[0].innerHTML;
		var tmpStr2 = s_row[0].innerHTML.substring(prefixStr.length,tmpStr.indexOf('</div></td><td data-title="操作编码"'));
		var tmpNum = tmpStr2.indexOf("</div>");
		var tmpStr3 = tmpStr2.substring(tmpNum,tmpStr2.length);
		var tmpNum2 = tmpStr3.indexOf("<div>");
		var tmpStr4 = tmpStr3.substring(tmpNum2,tmpStr3.length);
		var id = tmpStr4.substring(5);
		if(id == '' || id == null){
			alert('请选择操作的数据');
		}else{
			BJUI.dialog({
			    id:'addOpt_dialog',
			    url:'<%=request.getContextPath()%>/menu/optEdit',
			    title:'修改操作',
			    type:'POST',
			    data:{"id":id},
			    width:'800',
			    height:'500',
			    onClose:'function(){closeAddMenu_dialog();$("#menuForm").submit();}',
			})
		}
	}
	function delOpt(){
		var s_row = $("#tablist").data('selectedTrs');
		if(s_row == null){
			alert('请选择操作行');
		}
		var prefixStr = "<td data-title='No.' align='center' class='datagrid-linenumber-td'><div>";
		var tmpStr = s_row[0].innerHTML;
		var tmpStr2 = s_row[0].innerHTML.substring(prefixStr.length,tmpStr.indexOf('</div></td><td data-title="操作编码"'));
		var tmpNum = tmpStr2.indexOf("</div>");
		var tmpStr3 = tmpStr2.substring(tmpNum,tmpStr2.length);
		var tmpNum2 = tmpStr3.indexOf("<div>");
		var tmpStr4 = tmpStr3.substring(tmpNum2,tmpStr3.length);
		var id = tmpStr4.substring(5);
		if(id == '' || id == null){
			alert('请选择操作的数据');
		}else{
			var url = "<%=request.getContextPath()%>/menu/delOpt?id="+id;
			var param = {};
			$.post(url,param,function(result){
				if(result){
					closeAddMenu_dialog();
					$("#menuForm").submit();
				}else{
					
				}
			});
		}
	}
</SCRIPT>
</head>
<body>
<div id="divLeft" style="display: inline;float: left;width:20%;height:100%;"><ul id="treeMenu" class="ztree" style="width:94%;height: 100%;background: #f0f6e4;;border: 1px solid #ddd;"></ul></div>
<div id="divRigth" style="display: inline;float: left;width:80%;height: 100%;">
    <form id="menuForm" data-toggle="ajaxsearch" data-options="{searchDatagrid:$.CurrentNavtab.find('#tablist')}">
    	<input type='hidden' name="level" id="level" value="" />
    	<input type='hidden' name='id' id="id" value="" >
    </form>
    <table id="tablist" class="table table-bordered" data-toggle="datagrid" data-options="{
    height: '100%',
	gridTitle: '操作列表',
    dataUrl: '<%=request.getContextPath() %>/menu/pageJson',
    local: 'local',
    showToolbar: 'true',
    toolbarCustom:myButtons,
    editMode: {dialog:{width:'800',height:500,title:'用户信息',mask:true}},
    editUrl: '<%=request.getContextPath() %>/users/edit',
    delUrl: '<%=request.getContextPath() %>/users/del',
    delPK: 'id',
    columnResize: 'false'
}">
        <thead>
        <tr>
            <th data-options="{name:'id',hide:'true'}">id</th>
            <th data-options="{name:'funenname',finalWidth:70,align:'center',width:120}" >操作编码</th>
            <th data-options="{name:'funchname',finalWidth:120,align:'center',width:120}">操作名称</th>
            <th data-options="{name:'name',finalWidth:120,align:'center',width:120}">所属菜单</th>
        </tr>
        </thead>
    </table>
</div>
</body>
</html>