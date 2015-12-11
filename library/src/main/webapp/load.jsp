<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>艾阅图书-欢迎登录</title>
<link href="css/load.css" rel="stylesheet"type="text/css"/>
<style type="text/css">
#userpng{ float:left;width:39px; height:39px; background-image:url(images/yonghuming.jpg); margin-top:20px; border:solid 1px #CCCCCC}
#userbox{ margin-top:20px; height:39px; width:297px; border: solid 1px #ccc; border-left:solid 1px #fff}
#pswpng{float:left;width:39px; height:39px; background-image:url(images/mima.jpg); margin-top:30px; border:solid 1px #CCCCCC}
#pswbox{margin-top:30px; height:39px; width:297px; border: solid 1px #ccc; border-left:solid 1px #fff}
</style>
<script type="text/javascript">


</script>
</head>
<body>

<div class="header">
	<img  id="logo" src="images/logo111.jpg" />
	<div id="welcome">欢迎登录</div>
</div>
<div class="mainbody">
	<img src="images/9_111120170716_1.jpg" style="width:100%; height:100%;"/>
	<div id="loadbox">
		<div id="contentbox">
		     艾阅会员 &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp<a  href="register.jsp" style="font-size:16px; color:red;text-decoration:none">立即注册</a>
			<div  id="loadwarning" style=""> &nbsp;<img src="images/tishi.jpg"/>
				公共场所不建议自动登录，以防账号丢失
			</div>
			<div class="form">
				<form id="formlogin" method="post" action = "loginAction.action">
					<div id="userpng"> </div>
                    <input id="userbox" type="text" placeholder="邮箱/用户名/已验证手机" name = "name">
					<div id="pswpng"> </div>
                    <input id="pswbox" type="password"placeholder="密码" name = "password" >
					<div id="loadchoose">
						<span><input type="checkbox" id="auto"/> <label for="auto">自动登录</label> &nbsp &nbsp
						<input type="checkbox" id="usermanager" name = "manage"/><label for="usermanager"> 管理员登录</label>
					</span>
                	</div>
						  <input  type="submit" value="登&nbsp &nbsp录"  style=" width:100%; height:45px; background-color:#FF3333;border:0; color:#fff; font-size:24px;" />
					<div id="loadway">
					<p>使用合作网站账号登录艾阅</p><br />
					 <a href="#"> QQ</a><a href="#"> | 微信</a>
             		</div>  
				</form>
			</div>
	
		</div>
	</div>
</div>
<div  class="footer">
	<br /><br />
	 <div class="links">
            <a  href="#">
                关于我们
            </a>
            |
            <a  href="#">
                联系我们
            </a>
            |
            <a  href="#">
                人才招聘
            </a>
            |
            <a  href="#">
                商家入驻
            </a>
            |
            <a  href="#">
                广告服务
            </a>
            |
            <a  href="#">
                手机艾阅
            </a>
            |
            <a  href="#">
                友情链接
            </a>
            |
            <a  href="#">
                销售联盟
            </a>
            |
            <a href="#" >
                艾阅社区
            </a>
            |
            <a href="#" >
                艾阅公益
            </a>
            |
            <a  href="#" >English Site</a>
        </div>
		<br />
        <div class="copyright">
            Copyright&copy;2015-2016&nbsp;&nbsp;艾阅iR.com&nbsp;版权所有
        </div>
    </div>


</div>


</body>
</html>