<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<div class="bjui-pageContent">
    <div class="highlight">
        <pre class="prettyprint">
<table class="table table-bordered" data-toggle="datagrid" data-options="{
    height: '100%',
    gridTitle : 'datagrid 模板显示示例',
    local: 'local',
    dataUrl: '../../json/datagrid/datagrid.json',
    tdTemplate: datagrid_template_template,
    templateWidth: 0,
    dialogFilterW: 0
}">
    <thead>
        <tr>
            <th rowspan="2" data-options="{name:'code',align:'center',width:70}">门诊号</th>
            <th colspan="5" align="center">挂号信息</th>
            <th colspan="3" align="center">病人信息</th>
            <th colspan="3" align="center">就诊信息</th>
            <th rowspan="2" data-options="{name:'opercode',align:'center'}">操作员编号</th>
            <th rowspan="2" data-options="{name:'operdate',align:'center',type:'date',pattern:'yyyy-MM-dd HH:mm:ss'}">操作时间</th>
        </tr>
        <tr>
            <th data-options="{name:'regdate',align:'center',type:'date',pattern:'yyyy-MM-dd HH:mm',render:function(value){return value?value.substr(0,16):value}}">挂号日期</th>
            <th data-options="{name:'order',align:'center',width:50}">当日序号</th>
            <th data-options="{name:'regname'}">挂号类别</th>
            <th data-options="{name:'deptname',align:'center'}">科室</th>
            <th data-options="{name:'regfee',align:'center',width:60}">挂号费</th>
            <th data-options="{name:'name',align:'center',width:70}">姓名</th>
            <th data-options="{name:'sex',align:'center',width:45,type:'select',items:[{'true':'男'},{'false':'女'}]}">性别</th>
            <th data-options="{name:'age',align:'center',type:'number',width:45,render:function(value){return 2015-parseInt(value)}}">年龄</th>
            <th data-options="{name:'fr',align:'center',width:70,type:'boolean',render:function(value){return value ? '√' : '×'}}">是否初诊</th>
            <th data-options="{name:'see',align:'center',width:55,type:'boolean',render:function(value){return value ? '√' : '×'}}">已就诊</th>
            <th data-options="{name:'seedate',align:'center',type:'date',pattern:'yyyy-MM-dd HH:mm:ss'}">就诊时间</th>
        </tr>
    </thead>
</table>
&lt;script type="text/javascript"&gt;
function datagrid_template_template() {
    var temp = BJUI.StrBuilder()
    
    temp.add('<div>诊号/日期/序号/科室：')
        .add('{#code} / {#regdate} / {#order} / {#deptname}</div>')
        .add('<div>姓名/性别/年龄/初诊：')
        .add('{#name} / {#sex} / {#age} / {#fr}</div>')
    
    return temp.toString()
}
&lt;/script"&gt;
        </pre>
    </div>
</div>
<div class="bjui-pageFooter">
    <ul>
        <li><button type="button" class="btn-close" data-icon="close">关闭</button></li>
    </ul>
</div>