<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<script type="text/javascript">
$('#j_form_datepicker').datepicker({pattern:'dd/MM/yyyy', minDate:'2016-10-01'})
</script>
<div class="bjui-pageContent">
    <div class="bs-example">
        <div class="bjui-row col-2">
            <label class="row-label">日期选择</label>
            <div class="row-input">
                <input type="text" value="" data-toggle="datepicker" placeholder="点击选择日期">
            </div>
            <label class="row-label">有初始值</label>
            <div class="row-input">
                <input type="text" value="2016-10-01" data-toggle="datepicker">
            </div>
            <label class="row-label">不带选择按钮</label>
            <div class="row-input">
                <input type="text" value="" data-toggle="datepicker" data-nobtn="true" placeholder="点击选择日期">
            </div>
            <label class="row-label">日期样式</label>
            <div class="row-input">
                <input type="text" value="2016/10/01" data-toggle="datepicker" data-pattern="yyyy/MM/dd">
            </div>
            <label class="row-label">日期和时间</label>
            <div class="row-input">
                <input type="text" value="2016-10-01 10:01:01" data-toggle="datepicker" data-pattern="yyyy-MM-dd HH:mm:ss">
            </div>
            <label class="row-label">仅点击按钮触发</label>
            <div class="row-input">
                <input type="text" value="2016-10-01" data-toggle="datepicker" data-onlybtn="true">
            </div>
            <label class="row-label">仅时间</label>
            <div class="row-input">
                <input type="text" value="10:01:01" data-toggle="datepicker" data-pattern="HH:mm:ss">
            </div>
            <label class="row-label">时间分钟</label>
            <div class="row-input">
                <input type="text" value="10:01" data-toggle="datepicker" data-pattern="HH:mm">
            </div>
            <label class="row-label">JS API示例</label>
            <div class="row-input">
                <input type="text" value="01/10/2016" id="j_form_datepicker" placeholder="通过JS调用">
            </div>
        </div>
    </div>
    <div class="highlight">
        <pre class="prettyprint">
<div class="bjui-row col-2">
    <label class="row-label">日期选择</label>
    <div class="row-input">
        <input type="text" value="" data-toggle="datepicker" placeholder="点击选择日期">
    </div>
    <label class="row-label">有初始值</label>
    <div class="row-input">
        <input type="text" value="2016-10-01" data-toggle="datepicker">
    </div>
    <label class="row-label">不带选择按钮</label>
    <div class="row-input">
        <input type="text" value="" data-toggle="datepicker" data-nobtn="true" placeholder="点击选择日期">
    </div>
    <label class="row-label">日期样式</label>
    <div class="row-input">
        <input type="text" value="2016/10/01" data-toggle="datepicker" data-pattern="yyyy/MM/dd">
    </div>
    <label class="row-label">日期和时间</label>
    <div class="row-input">
        <input type="text" value="2016-10-01 10:01:01" data-toggle="datepicker" data-pattern="yyyy-MM-dd HH:mm:ss">
    </div>
    <label class="row-label">仅点击按钮触发</label>
    <div class="row-input">
        <input type="text" value="2016-10-01" data-toggle="datepicker" data-onlybtn="true">
    </div>
    <label class="row-label">仅时间</label>
    <div class="row-input">
        <input type="text" value="10:01:01" data-toggle="datepicker" data-pattern="HH:mm:ss">
    </div>
    <label class="row-label">时间分钟</label>
    <div class="row-input">
        <input type="text" value="10:01" data-toggle="datepicker" data-pattern="HH:mm">
    </div>
    <label class="row-label">JS API示例</label>
    <div class="row-input">
        <input type="text" value="01/10/2016" id="j_form_datepicker" placeholder="通过JS调用">
    </div>
</div>
&lt;script type="text/javascript"&gt;
// JS API 调用日期选择器
$('#j_form_datepicker').datepicker({pattern:'dd/MM/yyyy', minDate:'2016-10-01'})
&lt;/script&gt;
        </pre>
    </div>
</div>
<div class="bjui-pageFooter">
    <ul>
        <li><button type="button" class="btn-close" data-icon="close">关闭</button></li>
    </ul>
</div>