<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<div class="bjui-pageContent">
    <div class="bs-example">
        <div class="bjui-row col-2">
            <label class="row-label">普通文本框</label>
            <div class="row-input">
                <input type="text" value="普通文本框">
            </div>
            <label class="row-label">小尺寸文本框</label>
            <div class="row-input">
                <input type="text" class="input-sm" value="小尺寸文本框">
            </div>
            <label class="row-label">稍大尺寸文本框</label>
            <div class="row-input">
                <input type="text" class="input-nm" value="稍大尺寸文本框">
            </div>
            <label class="row-label">较大尺寸文本框</label>
            <div class="row-input">
                <input type="text" class="input-lg" value="较大尺寸文本框">
            </div>
            <label class="row-label">固定尺寸的普通文本框</label>
            <div class="row-input">
                <input type="text" value="固定尺寸的普通文本框" size="30">
            </div>
            <label class="row-label">只读文本框</label>
            <div class="row-input">
                <input type="text" value="只读文本框" readonly>
            </div>
            <label class="row-label">必填项</label>
            <div class="row-input required">
                <input type="text" value="必填项" data-rule="required">
            </div>
            <label class="row-label">已禁用的文本框</label>
            <div class="row-input">
                <input type="text" value="已禁用的文本框" size="30" disabled>
            </div>
            <label class="row-label">普通多行文本框</label>
            <div class="row-input">
                <textarea>普通多行文本框</textarea>
            </div>
            <br>
            <label class="row-label">固定尺寸的普通多行文本框</label>
            <div class="row-input">
                <textarea cols="30" rows="4">固定尺寸的普通多行文本框</textarea>
            </div>
            <br>
            <label class="row-label">自动调整高度的多行文本框</label>
            <div class="row-input">
                <textarea cols="30" rows="1" data-toggle="autoheight">自动调整高度的多行文本框</textarea>
            </div>
        </div>
    </div>
    <div class="highlight">
        <pre class="prettyprint">
<div class="bjui-row col-2">
    <label class="row-label">普通文本框</label>
    <div class="row-input">
        <input type="text" value="普通文本框">
    </div>
    <label class="row-label">小尺寸文本框</label>
    <div class="row-input">
        <input type="text" class="input-sm" value="小尺寸文本框">
    </div>
    <label class="row-label">稍大尺寸文本框</label>
    <div class="row-input">
        <input type="text" class="input-nm" value="稍大尺寸文本框">
    </div>
    <label class="row-label">较大尺寸文本框</label>
    <div class="row-input">
        <input type="text" class="input-lg" value="较大尺寸文本框">
    </div>
    <label class="row-label">固定尺寸的普通文本框</label>
    <div class="row-input">
        <input type="text" value="固定尺寸的普通文本框" size="30">
    </div>
    <label class="row-label">只读文本框</label>
    <div class="row-input">
        <input type="text" value="只读文本框" readonly>
    </div>
    <label class="row-label">必填项</label>
    <div class="row-input required">
        <input type="text" value="必填项" data-rule="required">
    </div>
    <label class="row-label">已禁用的文本框</label>
    <div class="row-input">
        <input type="text" value="已禁用的文本框" size="30" disabled>
    </div>
    <label class="row-label">普通多行文本框</label>
    <div class="row-input">
        <textarea>普通多行文本框</textarea>
    </div>
    <br>
    <label class="row-label">固定尺寸的普通多行文本框</label>
    <div class="row-input">
        <textarea cols="30" rows="4">固定尺寸的普通多行文本框</textarea>
    </div>
    <br>
    <label class="row-label">自动调整高度的多行文本框</label>
    <div class="row-input">
        <textarea cols="30" rows="1" data-toggle="autoheight">自动调整高度的多行文本框</textarea>
    </div>
</div>
        </pre>
    </div>
    <div class="bs-callout bs-callout-info">
        <h4>Class <code>form-control</code> 说明</h4>
        <p>B-JUI会为text或textarea自动加上Bootstrap的class <code>form-control</code> 。</p>
    </div>
</div>
<div class="bjui-pageFooter">
    <ul>
        <li><button type="button" class="btn-close" data-icon="close">关闭</button></li>
    </ul>
</div>