<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<div class="bjui-pageContent">
    <div class="highlight">
        <pre class="prettyprint">
<div class="bjui-pageHeader" style="background-color:#fefefe; border-bottom:none;">
<form data-toggle="ajaxsearch" data-options="{searchDatagrid:$.CurrentNavtab.find('#datagrid-test-filter')}">
    <fieldset>
        <legend style="font-weight:normal;">é¡µå¤´æç´¢ï¼</legend>
        <div style="margin:0; padding:1px 5px 5px;">
            <span>é¨è¯å·ï¼</span>
            <input type="text" name="obj.code" class="form-control" size="15">
            &nbsp;&nbsp;&nbsp;&nbsp;
            <span>å§åï¼</span>
            <input type="text" name="obj.name" class="form-control" size="15">
            &nbsp;&nbsp;&nbsp;&nbsp;
            <div class="btn-group">
                <button type="submit" class="btn-green" data-icon="search">å¼å§æç´¢ï¼</button>
                <button type="reset" class="btn-orange" data-icon="times">éç½®</button>
            </div>
        </div>
    </fieldset>
</form>
</div>
<div class="bjui-pageContent">
    <table class="table table-bordered" id="datagrid-test-filter" data-toggle="datagrid" data-options="{
        height: '100%',
        gridTitle : 'datagrid é¡µå¤´æç´¢ãèªå®ä¹ç¼è¾ç¤ºä¾',
        showToolbar: true,
        toolbarItem: 'add,edit,del,|,import,export,exportf',
        dataUrl: 'http://b-jui.com/demo?callback=?',
        dataType: 'jsonp',
        jsonPrefix: 'obj',
        editMode: {dialog:{width:'800',height:500,title:'ç¼è¾æå·ä¿¡æ¯',mask:true}},
        editUrl: '../../html/datagrid/datagrid-edit.html?code={code}',
        paging: {pageSize:60},
        showCheckboxcol: true,
        linenumberAll: true,
        importOption: {type:'dialog', options:{url:'../../html/datagrid/datagrid-import.html', width:500, height:300, title:'å¯¼å¥æå·ä¿¡æ¯'}},
        exportOption: {type:'file', options:{url:'http://b-jui.com/demo/export', loadingmask:true}}
    }">
        <thead>
            <tr>
                <th rowspan="2" data-options="{name:'code',align:'center',width:70}">é¨è¯å·</th>
                <th colspan="5" align="center">æå·ä¿¡æ¯</th>
                <th colspan="3" align="center">çäººä¿¡æ¯</th>
                <th colspan="3" align="center">å°±è¯ä¿¡æ¯</th>
                <th rowspan="2" data-options="{name:'opercode',align:'center'}">æä½åç¼å·</th>
                <th rowspan="2" data-options="{name:'operdate',align:'center',type:'date',pattern:'yyyy-MM-dd HH:mm:ss'}">æä½æ¶é´</th>
            </tr>
            <tr>
                <th data-options="{name:'regdate',align:'center',type:'date',pattern:'yyyy-MM-dd HH:mm',render:function(value){return value?value.substr(0,16):value}}">æå·æ¥æ</th>
                <th data-options="{name:'order',align:'center',width:50}">å½æ¥åºå·</th>
                <th data-options="{name:'regname'}">æå·ç±»å«</th>
                <th data-options="{name:'deptcode',type:'select',items:function(){return $.getJSON('http://b-jui.com/demo/listDepart?callback=?')},itemattr:{value:'deptcode',label:'deptname'}}">ç§å®¤</th>
                <th data-options="{name:'regfee',align:'center',width:60}">æå·è´¹</th>
                <th data-options="{name:'name',align:'center',width:70}">å§å</th>
                <th data-options="{name:'sex',align:'center',width:45,type:'select',items:[{'true':'ç·'},{'false':'å¥³'}]}">æ§å«</th>
                <th data-options="{name:'age',align:'center',type:'number',width:45,render:function(value){return 2015-parseInt(value)}}">å¹´é¾</th>
                <th data-options="{name:'fr',align:'center',width:70,type:'boolean',render:function(value){return value ? 'â' : 'Ã'}}">æ¯å¦åè¯</th>
                <th data-options="{name:'see',align:'center',width:55,type:'boolean',render:function(value){return value ? 'â' : 'Ã'}}">å·²å°±è¯</th>
                <th data-options="{name:'seedate',align:'center',type:'date',pattern:'yyyy-MM-dd HH:mm:ss'}">å°±è¯æ¶é´</th>
            </tr>
        </thead>
    </table>
</div>
        </pre>
    </div>
</div>
<div class="bjui-pageFooter">
    <ul>
        <li><button type="button" class="btn-close" data-icon="close">å³é­</button></li>
    </ul>
</div>