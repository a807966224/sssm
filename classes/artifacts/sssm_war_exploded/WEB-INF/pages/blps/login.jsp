<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<%-- <head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<form action="<c:url value="/j_spring_security_check"></c:url>" method="post" >
<table>
	<tr><td>username:</td><td><input type='text' name="ssoId" /></td></tr>
	<tr><td>password:</td><td><input type='password' name="password" /></td></tr>
	<tr><td>remember me:</td><td><input type='checkbox' name="_spring_security_remember_me" /></td></tr>
	<tr><td colspan="2"><input type='submit' value="login" /></td></tr>
</table>
</form>
</body> --%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="renderer" content="webkit">
<title>系统登录</title>
<script src="<%=request.getContextPath() %>/resources/bjui/B-JUI/js/jquery-1.11.3.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/bjui/B-JUI/js/jquery.cookie.js"></script>
<link href="<%=request.getContextPath() %>/resources/bjui/B-JUI/themes/css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">
html, body { height: 100%; overflow: hidden; }
body {
    font-family: "Verdana", "Tahoma", "Lucida Grande", "Microsoft YaHei", "Hiragino Sans GB", sans-serif;
    background: url(images/loginbg_01.jpg) no-repeat center center fixed;
    background-size: cover;
}
.form-control{height:37px;}
.main_box{position:absolute; top:45%; left:50%; margin:-200px 0 0 -180px; padding:15px 20px; width:360px; height:400px; min-width:320px; background:#FAFAFA; background:rgba(255,255,255,0.5); box-shadow: 1px 5px 8px #888888; border-radius:6px;}
.login_msg{height:30px;}
.input-group >.input-group-addon.code{padding:0;}
#captcha_img{cursor:pointer;}
.main_box .logo img{height:35px;}
@media (min-width: 768px) {
    .main_box {margin-left:-240px; padding:15px 55px; width:480px;}
    .main_box .logo img{height:40px;}
}
</style>
<script type="text/javascript">
var COOKIE_NAME = 'sys_em_username';
$(function() {
    changeMessage();
    choose_bg();
    changeCode();
    if ($.cookie(COOKIE_NAME)){
        $("#j_username").val($.cookie(COOKIE_NAME));
        $("#j_password").focus();
        $("#j_remember").attr('checked', true);
    } else {
        $("#j_username").focus();
    }
    $("#captcha_img").click(function(){
        changeCode();
    });
    document.onkeydown = function(e){
        var ev = document.all ? window.event : e;
        if(ev.keyCode == 13){
            toLogin();
        }
    }
});
function changeCode(){
    $("#captcha_img").attr("src", "<%=request.getContextPath() %>/captchaImage?t="+ (new Date().getTime()));
}
function choose_bg() {
    var bg = Math.floor(Math.random() * 9 + 1);
    $('body').css('background-image', 'url(<%=request.getContextPath() %>/resources/bjui/images/loginbg_0'+ bg +'.jpg)');
}
function changeMessage(){
    var error = '${error}';
    if(error == "1"){
        $("#errmessage").css("display","block");
        $("#errmessage").html("账号或密码错误！");
    }
}
function toLogin(){
	var issubmit = true;
    var i_index  = 0;
    $("#login_form").find('.form-control').each(function(i){
        if ($.trim($(this).val()).length == 0) {
            $(this).css('border', '1px #ff0000 solid');
            issubmit = false;
            if (i_index == 0)
                i_index  = i;
        }
    });
    if (!issubmit) {
    	$("#login_form").find('.form-control').eq(i_index).focus();
        return;
    }
    var captcha = $("#j_captcha").val();
    var url = "<%=request.getContextPath() %>/captcha";
    var param = {captcha:captcha};
    $.post(url,param,function(result){
    	if(result == "false"){
    		$("#errmessage").css("display","block");
            $("#errmessage").html("验证码错误！");
    	}else{
            var $remember = $("#j_remember");
            if ($remember.attr('checked')) {
                $.cookie(COOKIE_NAME, $("#j_username").val(), { path: '/', expires: 15 });
            } else {
                $.cookie(COOKIE_NAME, null, { path: '/' });  //删除cookie
            }
            $("#login_ok").attr("disabled", true).val('登陆中..');
            $("#login_form").submit();
        }
    });
}
</script>
</head>
<body>
<!--[if lte IE 7]>
<style type="text/css">
#errorie {position: fixed; top: 0; z-index: 100000; height: 30px; background: #FCF8E3;}
#errorie div {width: 900px; margin: 0 auto; line-height: 30px; color: orange; font-size: 14px; text-align: center;}
#errorie div a {color: #459f79;font-size: 14px;}
#errorie div a:hover {text-decoration: underline;}
</style>
<div id="errorie"><div>您还在使用老掉牙的IE，请升级您的浏览器到 IE8以上版本 <a target="_blank" href="http://windows.microsoft.com/zh-cn/internet-explorer/ie-8-worldwide-languages">点击升级</a>&nbsp;&nbsp;强烈建议您更改换浏览器：<a href="http://down.tech.sina.com.cn/content/40975.html" target="_blank">谷歌 Chrome</a></div></div>
<![endif]-->
<div class="container">
    <div class="main_box">
        <form action="<c:url value="/j_spring_security_check"></c:url>" id="login_form" method="post">
            <input type="hidden" value="" id="j_randomKey" />
            <input type="hidden" name="jfinal_token" value="" />
            <p class="text-center logo"><img src="<%=request.getContextPath() %>/resources/bjui/my_logo.png" height="45"></p>
            <div class="login_msg text-center"><font color="red"></font></div>
            <div class="form-group">
                <div class="input-group">
                    <span class="input-group-addon" id="sizing-addon-user"><span class="glyphicon glyphicon-user"></span></span>
                    <input type="text" class="form-control" id="j_username" name="ssoId" value="" placeholder="登录账号" aria-describedby="sizing-addon-user">
                </div>
            </div>
            <div class="form-group">
                <div class="input-group">
                    <span class="input-group-addon" id="sizing-addon-password"><span class="glyphicon glyphicon-lock"></span></span>
                    <input type="password" class="form-control" id="j_password" name="password" placeholder="登录密码" aria-describedby="sizing-addon-password">
                </div>
            </div>
            <div class="form-group">
                <div class="input-group">
                    <span class="input-group-addon" id="sizing-addon-password"><span class="glyphicon glyphicon-exclamation-sign"></span></span>
                    <input type="text" class="form-control" id="j_captcha" name="captcha" placeholder="验证码" aria-describedby="sizing-addon-password">
                    <span class="input-group-addon code" id="basic-addon-code"><img id="captcha_img" src="<%=request.getContextPath() %>/resources/bjui/images/captcha.jpg" alt="点击更换" title="点击更换" class="m"></span>
                </div>
            </div>
            <div class="form-group">
                <div class="checkbox">
                    <label for="j_remember" class="m"><input id="j_remember" type="checkbox" name="_spring_security_remember_me" value="true">&nbsp;记住登陆账号!</label>
                </div>
               	<span id="errmessage" style="display:none;">账号或密码不正确！</span>
            </div>
            <div class="text-center">
                <button onclick='toLogin();' type="button" id="login_ok" class="btn btn-primary btn-lg">&nbsp;登&nbsp;录&nbsp;</button>&nbsp;&nbsp;&nbsp;&nbsp;
                <button type="reset" class="btn btn-default btn-lg">&nbsp;重&nbsp;置&nbsp;</button>
            </div>
            <div class="text-center">
                <hr>
            </div>
        </form>
    </div>
</div>
</body>
</html>

