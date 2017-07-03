<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<script type="text/javascript">
function pagination_test_callback(pageCurrent, pageSize) {
    BJUI.ajax('doajax', {
        url: 'http://b-jui.com/demo?callback=?',
        data: {pageCurrent:pageCurrent, pageSize:pageSize},
        dataType: 'jsonp',
        okCallback: function(json) {
            var lis = BJUI.StrBuilder()
            
            $.each(json.list, function(i, n) {
                lis.add('<li>')
                    .add(n.code).add(' - ')
                    .add(n.deptname).add(' - ')
                    .add(n.name).add(' - ')
                    .add(n.sex ? '男' : '女')
                    .add('</li>')
            })
            
            $('#pagination_test_ul1').html(lis.toString())
        }
    })
}
function pagination_test_beforesubmit(form) {
    console.log(form.data('bjui.paging'))
    return true
}
</script>
<div class="bjui-pageContent">
    <div class="bs-example">
        <div class="row">
            <div class="col-sm-6">
                <h4>ajax分页<small>(自定义回调函数实现)</small></h4>
                <hr>
                <ul id="pagination_test_ul1">
                    <li>532660 - 儿科 - 曾** - 女</li>
                    <li>532659 - 内科 - 左** - 男</li>
                    <li>532658 - 肝病科 - 陈* - 男</li>
                    <li>532657 - 内科 - 罗* - 男</li>
                    <li>532656 - 内科 - 许** - 男</li>
                </ul>
                <hr>
                <div data-toggle="pagination" data-options="{total:1000, pageSize:5, callback:pagination_test_callback}">
                </div>
            </div>
            <div class="col-sm-6">
                <h4>结合form分页<small>(点分页或搜索按钮后，在控制台查看分页参数输出)</small></h4>
                <form id="pagination_test_searchform" data-toggle="ajaxsearch" data-options="{url:'resources/bjui/html/base/pagination.jsp', beforeSubmit:pagination_test_beforesubmit}">
                    <fieldset>
                        <legend style="font-weight:normal;">页头搜索：</legend>
                        <div style="margin:0; padding:1px 5px 5px;">
                            <span>门诊号：</span>
                            <input type="text" name="obj.code" class="form-control" size="15">
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <span>姓名：</span>
                            <input type="text" name="obj.name" class="form-control" size="15">
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <div class="btn-group">
                                <button type="submit" class="btn-green" data-icon="search">开始搜索！</button>
                                <button type="reset" class="btn-orange" data-icon="times">重置</button>
                            </div>
                        </div>
                    </fieldset>
                </form>
                <hr>
                <ul>
                    <li>...</li>
                    <li>...</li>
                </ul>
                <div data-toggle="pagination" data-options="{total:1000, pageCurrent:5, form:'#pagination_test_searchform'}">
                </div>
            </div>
        </div>
    </div>
    <div class="highlight">
        <pre class="prettyprint">
<div class="row">
    <div class="col-sm-6">
        <h4>ajax分页<small>(自定义回调函数实现)</small></h4>
        <hr>
        <ul id="pagination_test_ul1">
            <li>532660 - 儿科 - 曾** - 女</li>
            <li>532659 - 内科 - 左** - 男</li>
            <li>532658 - 肝病科 - 陈* - 男</li>
            <li>532657 - 内科 - 罗* - 男</li>
            <li>532656 - 内科 - 许** - 男</li>
        </ul>
        <hr>
        <div data-toggle="pagination" data-options="{total:1000, pageSize:5, callback:pagination_test_callback}">
        </div>
    </div>
    <div class="col-sm-6">
        <h4>结合form分页<small>(点分页或搜索按钮后，在控制台查看分页参数输出)</small></h4>
        <form id="pagination_test_searchform" data-toggle="ajaxsearch" data-options="{url:'resources/bjui/html/base/pagination.jsp', beforeSubmit:pagination_test_beforesubmit}">
            <fieldset>
                <legend style="font-weight:normal;">页头搜索：</legend>
                <div style="margin:0; padding:1px 5px 5px;">
                    <span>门诊号：</span>
                    <input type="text" name="obj.code" class="form-control" size="15">
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <span>姓名：</span>
                    <input type="text" name="obj.name" class="form-control" size="15">
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <div class="btn-group">
                        <button type="submit" class="btn-green" data-icon="search">开始搜索！</button>
                        <button type="reset" class="btn-orange" data-icon="times">重置</button>
                    </div>
                </div>
            </fieldset>
        </form>
        <hr>
        <ul>
            <li>...</li>
            <li>...</li>
        </ul>
        <div data-toggle="pagination" data-options="{total:1000, pageCurrent:5, form:'#pagination_test_searchform'}">
        </div>
    </div>
</div>
<script type="text/javascript">
function pagination_test_callback(pageCurrent, pageSize) {
    BJUI.ajax('doajax', {
        url: 'http://b-jui.com/demo?callback=?',
        data: {pageCurrent:pageCurrent, pageSize:pageSize},
        dataType: 'jsonp',
        okCallback: function(json) {
            var lis = BJUI.StrBuilder()
            
            $.each(json.list, function(i, n) {
                lis.add('<li>')
                    .add(n.code).add(' - ')
                    .add(n.deptname).add(' - ')
                    .add(n.name).add(' - ')
                    .add(n.sex ? '男' : '女')
                    .add('</li>')
            })
            
            $('#pagination_test_ul1').html(lis.toString())
        }
    })
}
function pagination_test_beforesubmit(form) {
    console.log(form.data('bjui.paging'))
    return true
}
</script>
        </pre>
    </div>
</div>