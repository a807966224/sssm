<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<script type="text/javascript">
// Spinner JS API 调用
$('#j_spinner').spinner({
    min: 100,
    max: 500,
    step: 10
})
</script>
<div class="bjui-pageContent">
    <div class="bs-example">
        <div class="bjui-row col-2">
            <label class="row-label">Spinner Data API</label>
            <div class="row-input">
                <input type="text" name="obj.s1" value="0" data-toggle="spinner" size="10">
            </div>
            <label class="row-label">允许负值，增量为5</label>
            <div class="row-input">
                <input type="text" name="obj.s2" value="5" data-toggle="spinner" data-step="5" data-min="-1000" size="10">
            </div>
            <label class="row-label">两位小数</label>
            <div class="row-input">
                <input type="text" name="obj.s3" value="5.13" data-toggle="spinner" data-step="0.01" data-decimal-place="2" size="10">
            </div>
            <label class="row-label">限制在1-10之间</label>
            <div class="row-input">
                <input type="text" name="obj.s4" value="1" data-toggle="spinner" data-min="1" data-max="10" size="10">
            </div>
            <label class="row-label">Spinner JS API</label>
            <div class="row-input">
                <input type="text" name="obj.s5" id="j_spinner" value="100" data-toggle="spinner" size="10">
            </div>
        </div>
    </div>
    <div class="highlight">
        <pre class="prettyprint">
<div class="bs-example">
    <div class="bjui-row col-2">
        <label class="row-label">Spinner Data API</label>
        <div class="row-input">
            <input type="text" name="obj.s1" value="0" data-toggle="spinner" size="10">
        </div>
        <label class="row-label">允许负值，增量为5</label>
        <div class="row-input">
            <input type="text" name="obj.s2" value="5" data-toggle="spinner" data-step="5" data-min="-1000" size="10">
        </div>
        <label class="row-label">两位小数</label>
        <div class="row-input">
            <input type="text" name="obj.s3" value="5.13" data-toggle="spinner" data-step="0.01" data-decimal-place="2" size="10">
        </div>
        <label class="row-label">限制在1-10之间</label>
        <div class="row-input">
            <input type="text" name="obj.s4" value="1" data-toggle="spinner" data-min="1" data-max="10" size="10">
        </div>
        <label class="row-label">Spinner JS API</label>
        <div class="row-input">
            <input type="text" name="obj.s5" id="j_spinner" value="1" data-toggle="spinner" size="10">
        </div>
    </div>
</div>
&lt;script type="text/javascript"&gt;
// Spinner JS API 调用
$('#j_spinner').spinner({
    min: 100,
    max: 500,
    step: 10
})
&lt;/script&gt;
        </pre>
    </div>
</div>
<div class="bjui-pageFooter">
    <ul>
        <li><button type="button" class="btn-close" data-icon="close">关闭</button></li>
    </ul>
</div>