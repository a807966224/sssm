<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<div class="bjui-pageContent">
    <div class="bs-example">
        <div class="bjui-row col-2">
            <label class="row-label">复选框</label>
            <div class="row-input">
                <input type="checkbox" name="checkbox" id="j_form_checkbox1" value="1" data-toggle="icheck" data-label="复选框">
            </div>
            <label class="row-label">已选中复选框</label>
            <div class="row-input">
                <input type="checkbox" name="checkbox" id="j_form_checkbox2" value="1" data-toggle="icheck" data-label="已选中复选框" checked>
            </div>
            <label class="row-label">已禁用复选框</label>
            <div class="row-input">
                <input type="checkbox" name="checkbox" id="j_form_checkbox2" value="1" data-toggle="icheck" data-label="已禁用复选框" disabled>
            </div>
            <label class="row-label">已选中已禁用复选框</label>
            <div class="row-input">
                <input type="checkbox" name="checkbox" id="j_form_checkbox3" value="1" data-toggle="icheck" data-label="已选中已禁用复选框" checked disabled>
            </div>
            <label class="row-label">单选框</label>
            <div class="row-input">
                <input type="radio" name="radio1" id="j_form_radio1" value="1" data-toggle="icheck" data-label="单选框">
            </div>
            <label class="row-label">已选中单选框</label>
            <div class="row-input">
                <input type="radio" name="radio2" id="j_form_radio2" value="1" data-toggle="icheck" data-label="已选中单选框" checked>
            </div>
            <label class="row-label">已禁用单选框</label>
            <div class="row-input">
                <input type="radio" name="radio2" id="j_form_radio2" value="1" data-toggle="icheck" data-label="已禁用单选框" disabled>
            </div>
            <label class="row-label">已选中已禁用单选框</label>
            <div class="row-input">
                <input type="radio" name="radio3" id="j_form_radio3" value="1" data-toggle="icheck" data-label="已选中已禁用单选框" checked disabled>
            </div>
        </div>
    </div>
    <div class="highlight">
        <pre class="prettyprint">
<div class="bjui-row col-2">
    <label class="row-label">复选框</label>
    <div class="row-input">
        <input type="checkbox" name="checkbox" id="j_form_checkbox1" value="1" data-toggle="icheck" data-label="复选框">
    </div>
    <label class="row-label">已选中复选框</label>
    <div class="row-input">
        <input type="checkbox" name="checkbox" id="j_form_checkbox2" value="1" data-toggle="icheck" data-label="已选中复选框" checked>
    </div>
    <label class="row-label">已禁用复选框</label>
    <div class="row-input">
        <input type="checkbox" name="checkbox" id="j_form_checkbox2" value="1" data-toggle="icheck" data-label="已禁用复选框" disabled>
    </div>
    <label class="row-label">已选中已禁用复选框</label>
    <div class="row-input">
        <input type="checkbox" name="checkbox" id="j_form_checkbox3" value="1" data-toggle="icheck" data-label="已选中已禁用复选框" checked disabled>
    </div>
    <label class="row-label">单选框</label>
    <div class="row-input">
        <input type="radio" name="radio1" id="j_form_radio1" value="1" data-toggle="icheck" data-label="单选框">
    </div>
    <label class="row-label">已选中单选框</label>
    <div class="row-input">
        <input type="radio" name="radio2" id="j_form_radio2" value="1" data-toggle="icheck" data-label="已选中单选框" checked>
    </div>
    <label class="row-label">已禁用单选框</label>
    <div class="row-input">
        <input type="radio" name="radio2" id="j_form_radio2" value="1" data-toggle="icheck" data-label="已禁用单选框" disabled>
    </div>
    <label class="row-label">已选中已禁用单选框</label>
    <div class="row-input">
        <input type="radio" name="radio3" id="j_form_radio3" value="1" data-toggle="icheck" data-label="已选中已禁用单选框" checked disabled>
    </div>
</div>
        </pre>
    </div>
    <div class="bs-callout bs-callout-warning">
        <h4>复选、单选框的Label</h4>
        <p>直接在html上添加 <code>data-label</code> 属性，可自动添加上Label。当input有 <code>id</code> 属性时，点击label可变更复(单)选框状态。</p>
    </div>
    <div class="bs-callout bs-callout-info">
        <h4>iCheck 插件更多参数及事件</h4>
        <p>参见<a href="http://www.bootcss.com/p/icheck/" target="_blank">http://www.bootcss.com/p/icheck/</a>。</p>
    </div>
</div>
<div class="bjui-pageFooter">
    <ul>
        <li><button type="button" class="btn-close" data-icon="close">关闭</button></li>
    </ul>
</div>