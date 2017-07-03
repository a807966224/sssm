<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<div class="bjui-pageContent">
    <div class="bs-example">
        <div class="bjui-row col-2">
            <label class="row-label">自动宽度</label>
            <div class="row-input">
                <select data-toggle="selectpicker">
                    <option value="">全部</option>
                    <option value="1">下拉选项1</option>
                    <option value="2" selected>下拉选项2</option>
                    <option value="3">下拉选项3</option>
                    <option value="4">下拉选项4</option>
                </select>
            </div>
            <label class="row-label">固定宽度</label>
            <div class="row-input">
                <select data-toggle="selectpicker" data-width="200">
                    <option value="">全部</option>
                    <option value="1">下拉选项1</option>
                    <option value="2" selected>下拉选项2</option>
                    <option value="3">下拉选项3</option>
                    <option value="4">下拉选项4</option>
                </select>
            </div>
            <label class="row-label">多选</label>
            <div class="row-input">
                <select data-toggle="selectpicker" data-width="200" multiple>
                    <option value="">全部</option>
                    <option value="崇明">崇明</option>
                    <option value="黄浦">黄浦</option>
                    <option value="卢湾">卢湾</option>
                    <option value="徐汇">徐汇</option>
                    <option value="长宁">长宁</option>
                    <option value="静安">静安</option>
                    <option value="普陀">普陀</option>
                    <option value="闸北">闸北</option>
                    <option value="虹口">虹口</option>
                    <option value="杨浦">杨浦</option>
                    <option value="闵行">闵行</option>
                    <option value="宝山">宝山</option>
                    <option value="嘉定">嘉定</option>
                    <option value="浦东">浦东</option>
                    <option value="金山">金山</option>
                    <option value="松江">松江</option>
                    <option value="青浦">青浦</option>
                    <option value="南汇">南汇</option>
                    <option value="奉贤">奉贤</option>
                    <option value="朱家角">朱家角</option>
                </select>
            </div>
            <label class="row-label">联动(二维数组)</label>
            <div class="row-input">
                <select name="province" data-toggle="selectpicker" data-nextselect="#j_form_city" data-refurl="../../json/select/city_{value}.html">
                    <option value="all">--省市--</option>
                    <option value="bj">北京</option>
                    <option value="sh">上海</option>
                </select>
                <select name="city" id="j_form_city" data-toggle="selectpicker" data-nextselect="#j_form_area" data-refurl="../../json/select/area_{value}.html" data-emptytxt="--城市--">
                    <option value="all">--城市--</option>
                </select>
                <select name="area" id="j_form_area" data-toggle="selectpicker" data-emptytxt="--区县--">
                    <option value="all">--区县--</option>
                </select>
            </div>
            <label class="row-label">联动(有初始值)</label>
            <div class="row-input">
                <select name="province1" data-toggle="selectpicker" data-nextselect="#j_form_city1" data-refurl="../../json/select/city_{value}.html">
                    <option value="all">--省市--</option>
                    <option value="bj" selected>北京</option>
                    <option value="sh">上海</option>
                </select>
                <select name="city1" id="j_form_city1" data-toggle="selectpicker" data-nextselect="#j_form_area1" data-refurl="../../json/select/area_{value}.html" data-val="bj" data-emptytxt="--城市--">
                    <option value="all">--城市--</option>
                </select>
                <select name="area1" id="j_form_area1" data-toggle="selectpicker" data-val="朝阳" data-emptytxt="--区县--">
                    <option value="all">--区县--</option>
                </select>
            </div>
            <label class="row-label">联动(标准json)</label>
            <div class="row-input">
                <select name="province" data-toggle="selectpicker" data-nextselect="#j_form_city2" data-refurl="../../json/select/json_city_{value}.html">
                    <option value="all">--省市--</option>
                    <option value="bj">北京</option>
                    <option value="sh">上海</option>
                </select>
                <select name="city" id="j_form_city2" data-toggle="selectpicker" data-nextselect="#j_form_area2" data-refurl="../../json/select/json_area_{value}.html" data-emptytxt="--城市--">
                    <option value="all">--城市--</option>
                </select>
                <select name="area" id="j_form_area2" data-toggle="selectpicker" data-emptytxt="--区县--">
                    <option value="all">--区县--</option>
                </select>
            </div>
            <label class="row-label">禁用</label>
            <div class="row-input">
                <select data-toggle="selectpicker" data-width="200" disabled>
                    <option value="">全部</option>
                    <option value="1">下拉选项1</option>
                    <option value="2" selected="">下拉选项2</option>
                    <option value="3">下拉选项3</option>
                    <option value="4">下拉选项4</option>
                </select>
            </div>
        </div>
    </div>
    <div class="highlight">
        <pre class="prettyprint">
<div class="bjui-row col-2">
    <label class="row-label">自动宽度</label>
    <div class="row-input">
        <select data-toggle="selectpicker">
            <option value="">全部</option>
            <option value="1">下拉选项1</option>
            <option value="2" selected>下拉选项2</option>
            <option value="3">下拉选项3</option>
            <option value="4">下拉选项4</option>
        </select>
    </div>
    <label class="row-label">固定宽度</label>
    <div class="row-input">
        <select data-toggle="selectpicker" data-width="200">
            <option value="">全部</option>
            <option value="1">下拉选项1</option>
            <option value="2" selected>下拉选项2</option>
            <option value="3">下拉选项3</option>
            <option value="4">下拉选项4</option>
        </select>
    </div>
    <label class="row-label">多选</label>
    <div class="row-input">
        <select data-toggle="selectpicker" data-width="200" multiple>
            <option value="">全部</option>
            <option value="崇明">崇明</option>
            <option value="黄浦">黄浦</option>
            <option value="卢湾">卢湾</option>
            <option value="徐汇">徐汇</option>
            <option value="长宁">长宁</option>
            <option value="静安">静安</option>
            <option value="普陀">普陀</option>
            <option value="闸北">闸北</option>
            <option value="虹口">虹口</option>
            <option value="杨浦">杨浦</option>
            <option value="闵行">闵行</option>
            <option value="宝山">宝山</option>
            <option value="嘉定">嘉定</option>
            <option value="浦东">浦东</option>
            <option value="金山">金山</option>
            <option value="松江">松江</option>
            <option value="青浦">青浦</option>
            <option value="南汇">南汇</option>
            <option value="奉贤">奉贤</option>
            <option value="朱家角">朱家角</option>
        </select>
    </div>
    <label class="row-label">联动(二维数组)</label>
    <div class="row-input">
        <select name="province" data-toggle="selectpicker" data-nextselect="#j_form_city" data-refurl="../../json/select/city_{value}.html">
            <option value="all">--省市--</option>
            <option value="bj">北京</option>
            <option value="sh">上海</option>
        </select>
        <select name="city" id="j_form_city" data-toggle="selectpicker" data-nextselect="#j_form_area" data-refurl="../../json/select/area_{value}.html" data-emptytxt="--城市--">
            <option value="all">--城市--</option>
        </select>
        <select name="area" id="j_form_area" data-toggle="selectpicker" data-emptytxt="--区县--">
            <option value="all">--区县--</option>
        </select>
    </div>
    <label class="row-label">联动(有初始值)</label>
    <div class="row-input">
        <select name="province1" data-toggle="selectpicker" data-nextselect="#j_form_city1" data-refurl="../../json/select/city_{value}.html">
            <option value="all">--省市--</option>
            <option value="bj" selected>北京</option>
            <option value="sh">上海</option>
        </select>
        <select name="city1" id="j_form_city1" data-toggle="selectpicker" data-nextselect="#j_form_area1" data-refurl="../../json/select/area_{value}.html" data-val="bj" data-emptytxt="--城市--">
            <option value="all">--城市--</option>
        </select>
        <select name="area1" id="j_form_area1" data-toggle="selectpicker" data-val="朝阳" data-emptytxt="--区县--">
            <option value="all">--区县--</option>
        </select>
    </div>
    <label class="row-label">联动(标准json)</label>
    <div class="row-input">
        <select name="province" data-toggle="selectpicker" data-nextselect="#j_form_city2" data-refurl="../../json/select/json_city_{value}.html">
            <option value="all">--省市--</option>
            <option value="bj">北京</option>
            <option value="sh">上海</option>
        </select>
        <select name="city" id="j_form_city2" data-toggle="selectpicker" data-nextselect="#j_form_area2" data-refurl="../../json/select/json_area_{value}.html" data-emptytxt="--城市--">
            <option value="all">--城市--</option>
        </select>
        <select name="area" id="j_form_area2" data-toggle="selectpicker" data-emptytxt="--区县--">
            <option value="all">--区县--</option>
        </select>
    </div>
    <label class="row-label">禁用</label>
    <div class="row-input">
        <select data-toggle="selectpicker" data-width="200" disabled>
            <option value="">全部</option>
            <option value="1">下拉选项1</option>
            <option value="2" selected="">下拉选项2</option>
            <option value="3">下拉选项3</option>
            <option value="4">下拉选项4</option>
        </select>
    </div>
</div>
        </pre>
    </div>
    <div class="bs-callout bs-callout-warning">
        <h4>联动数据</h4>
        <p>Select所用的联动数据在DEMO的目录位置： <code>/json/select/</code> 。</p>
    </div>
    <div class="bs-callout bs-callout-info">
        <h4>Bootstrap Select 插件更多参数</h4>
        <p>详见<a href="http://silviomoreto.github.io/bootstrap-select/" target="_blank">http://silviomoreto.github.io/bootstrap-select/</a>。</p>
    </div>
</div>
<div class="bjui-pageFooter">
    <ul>
        <li><button type="button" class="btn-close" data-icon="close">关闭</button></li>
    </ul>
</div>