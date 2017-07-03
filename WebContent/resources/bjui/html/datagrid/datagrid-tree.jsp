<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<script type="text/javascript">
// department
function datagrid_tree_department() {
    return [{'001':'办公室'},{'002':'财务部'},{'003':'人事部'},{'004':'采购部'},{'005':'市场部'},{'006':'销售部'}]
}
// 操作列
function datagrid_tree_operation() {
    var html = '<button type="button" class="btn-green" data-toggle="edit.datagrid.tr">编辑</button>'
        + '<button type="button" class="btn-red" data-toggle="del.datagrid.tr">删除</button>'
    
    return html
}
//不能拖动一级父节点
function datagrid_tree_beforeDrag(tr, data) {
    if (data && data.level == 0) {
        return false
    }
    
    return true
}
// 不能将子节点拖为一级父节点
function datagrid_tree_beforeDrop(data, targetData, position) {
    if (targetData && targetData.level == 0 && position !== 'append') {
        return false
    }
    
    return true
}
</script>
<div class="bjui-pageHeader" style="background-color:#fff; border-bottom:none;">
    <div class="bs-callout bs-callout-warning">
        <h4>Datagrid - 树型表格 示例说明</h4>
        <p>这是一个树状的datagrid示例。数据文件位置： <code>/json/datagrid/datagrid-tree.json</code> 。<a href="html/datagrid/datagrid-tree-source.html" data-toggle="dialog" data-options="{id:'dialog-datagrid-source-tree', width:1000, height:600, title:'查看树状Datagrid示例 - 源码'}">点击查看示例源码</a></p>
    </div>
</div>
<div class="bjui-pageContent">
    <table id="j_datagrid_tree" data-toggle="datagrid" data-options="{
        width: '100%',
        height: '100%',
        gridTitle: '树状datagrid 示例 ',
        showToolbar: true,
        toolbarItem:'add, cancel, del, save',
        local: 'local',
        dataUrl: 'resources/bjui/json/datagrid/datagrid-tree.json',
        inlineEditMult: false,
        editUrl: 'resources/bjui/json/ajaxDone.json',
        isTree: 'name',
        addLocation: 'last',
        fieldSortable: false,
        columnMenu: false,
        paging: false,
        treeOptions: {
            expandAll: false,
            add: true,
            simpleData: true,
            keys: {
                parentKey: 'parentid'
            }
        },
        dropOptions: {
            drop: true,
            position: 'before',
            dropUrl: '../../json/ajaxDone.json',
            beforeDrag: datagrid_tree_beforeDrag,
            beforeDrop: datagrid_tree_beforeDrop,
            afterDrop: 'array'
        }
    }">
        <thead>
            <tr>
                <th data-options="{name:'name', align:'center', width:300, rule:'required'}">角色名称</th>
                <th data-options="{name:'department', align:'center', type:'select', items:datagrid_tree_department}">部门</th>
                <th data-options="{render:datagrid_tree_operation}">操作列</th>
            </tr>
        </thead>
    </table>
</div>