<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>艾阅-欢迎注册</title>
<link href="css/register.css" rel="stylesheet" type="text/css"/>
<style type="text/css">

*{margin:0;padding:0;}
.header{width:1350px; height:86px; background-color:#fff; margin:0 auto;text-align: center;font-family:微软雅黑; font-size:24px; color:#666666;}
#logo{ width:190px; height:80px; margin:5px 0 1px 130px; float:left}
#welcome{ margin-top:32px; margin-left:15px; float:left}
.mainbody{width:1350px; height:500px; background-color:#F2F2F2; position:relative }

.footer{width:1350px; height:90px; background-color:#fff;  float:left;   padding-bottom: 30px;text-align: center;}
.links a{text-decoration:none; color:#666; font-size:12px}
.links a:hover{color:#f00;}
.copyright{ color:#666; font-size:12px}
</style>
</head>
<body>
<div style="height:600px; width:1350px">
<div class="header">
	<img  id="logo" src="images/logo111.jpg" />
	<div id="welcome">欢迎注册</div>
	<div style="position:absolute;height:20px;width:280px; top:60px;right:100px;text-align:left"><span style="font-size:15px; width:auto">我已注册,现在就</span><a href="load.jsp" style="font-size:16px;color:red;text-decoration:none">登录</a></div>
</div>
	<div class="mainbody">
<form action = "registerAction.action" method = "post">
	<div>
		<label><span>用户名:</span><input type="text"class="text" name = "name"/></label><p class="msg"><i class="ati"></i>5-25个字符，一个汉字为两个字符串</p>
	</div>
	<div><label><span></span><b id="count">0个字符</b></label></div>
	<div>
		<label><span>密码:</span><input type="password"class="text" name = "password"/></label><p class="msg"><i class="err"></i>6-25个字符，一个汉字为两个字符串</p>
	</div>
	<div style="margin:10px 0 10px 0"><label><span></span></label></div>
	<div style=" margin-bottom:20px;"><label><span>确认密码:</span><input type="password" class="text" disabled=""></label><p class="msg"><i class="ati"></i>请再输入一次</p>
	</div>
	<div >
		<label><span>性别:</span><input type="radio" value="1"  name="sex" checked="checked" />男
    					   <input type="radio" value="2"  name="sex" />女</label><p class="msg"><i class="ati"></i></p>
	</div>
	<div style=" margin-bottom:20px;">
	  <label><span>手机号码:</span><input type="text" class="text" name = "phone"/>
		</label><p class="msg"><i class="ati"></i>11位有效手机号码</p>
	</div>
	<div style=" margin-bottom:20px;">
		<label><span>身份证号:</span><input type="text" class="text" name = "id_card"/></label><p class="msg"><i class="ati"></i></p>
	</div>
	<!--验证码  -->
	<div style=" margin-bottom:20px;">
			<label><span>验证码：</span><input type = "text"class="text" name = "checkcode" style="width:80px;" /> </label>
		<img alt="验证码" src="createImageAction.action" id = "imagecode" />&nbsp<span style="font-size:14px;">看不清？</span>
	    <a href="javascript: reloadCode();" style="font-size:14px; text-decoration:none">换一张</a><br>
	 </div>
	 <!--验证码  -->   
	    
	    
	<div>
		<label><br/><input type="radio" value=""  name="read" checked="checked" />我已阅读并同意<a href="#" style=" text-decoration:none; font-size:13px;">《艾阅用户注册协议》<a>
    					</label><p class="msg"><i class="ati"></i></p>
	</div>
	
	<div><input class="submitBtn" type="submit" value="确认注册"/></div>
</form>
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
<script type="text/javascript">

function reloadCode () {
	var time = new Date ().getTime ();
	document.getElementById("imagecode").src="createImageAction.action?d="+time;
}


function getLength(str)
{
	return str.replace(/[^\x00-xff]/g, "xx").length;	
}
 function findStr(str,n)
{
	var tmp=0;
	for(var i=0; i<str.length;i++){
		if(str.charAt(i)==n){
					  tmp++;
					  }
		}
		return tmp;
}
 function inputname(username,str)
 {
	 
	 for(var i=0; i<username.length; i++)
		 {
		 
		 	if(username[i].username==str){
		 		
		 		return 1;}
		 }
	 return 0;
	 
 }
 
 
window.onload=function()
{
	var aInput=document.getElementsByTagName("input");
	var oName=aInput[0];
	var pwd=aInput[1];
	var pwd2=aInput[2];
	var phone=aInput[5];
	var id=aInput[6];
	var aP=document.getElementsByTagName("p");
	var name_msg=aP[0];
	var pwd_msg=aP[1];
	var pwd2_msg=aP[2];
	var phone_msg=aP[4];
	var id_msg=aP[5];
	var count=document.getElementById("count");
	var aEm=document.getElementsByTagName("em");
	


	var re=/[^\w\u4e00-\u9fa5]/g;
  oName.onfocus=function(){
		name_msg.style.display="block";
		name_msg.innerHTML='<i class="ati"></i>6-25个字符，一个汉字为2个字符，推荐使用中文。'
		}

  oName.onkeyup=function(){
	count.style.visibility="visible";
	name_length=getLength(this.value);
	count.innerHTML=name_length+"个字符";
	
	if(name_length==0){
		count.style.visibility="hidden";
	}
	}
  oName.onblur=function(){
	var re=/[^\w\u4e00-\u9fa5]/g;

// var judge=inputname(username,this.value);

	if(re.test(this.value)){
		name_msg.innerHTML='<i class="err"></i>含有非法字符！'
		}
	/*else if(judge){

		name_msg.innerHTML='<i class="err"></i>用户名已被占用！'
	}
	*/
	else if(this.value==""){
		name_msg.innerHTML='<i class="err"></i>不能为空！'
		}
	else if(name_length>25){
		name_msg.innerHTML='<i class="err"></i>长度不超过25个字符！'
		}
	else if(name_length<6){
		name_msg.innerHTML='<i class="err"></i>长度少于6个字符！'
		}
	else{
		name_msg.innerHTML='<i class="err"></i>OK！'
	}
		
  }

  pwd.onfocus=function(){
	  pwd_msg.style.display="block";
	  pwd_msg.innerHTML='<i class="ati"></i>6-16个字符,字母加数字或符号,不能单独同一字符'
	 
	 }
	 
  pwd.onkeyup=function(){
	  
	  if(this.value.length>5){
		  /*aEm[1].className="active";*/
		  pwd2.removeAttribute("disabled");
		  pwd2_msg.style.display="block";
		  }
	  else{
		 /* aEm[1].className="";*/
		  pwd2.setAttribute("disabled");
		   pwd2_msg.style.display="none";
		
		}
		  if(this.value.length>10){
			  aEm[2].className="active";
			  }
		  else{
			  aEm[2].className="";
			  }	  
	  }
	  pwd.onblur=function(){
		  var m=findStr(pwd.value,pwd.value[0]);
		  var re_n=/[^\d]/g;
		   var re_t=/[^a-zA-Z]/g;
		  
		  if(this.value==""){
			  pwd_msg.innerHTML='<i class="err"></i>不能为空！';
			  }
			  
		  else if(m==this.value.length){
			  pwd_msg.innerHTML='<i class="err"></i>不能用相同字符！';
			  }
		  else if(this.value.length<6||this.value.length>16){
			  pwd_msg.innerHTML='<i class="err"></i>长度应为6-16个字符！';
		 
			  }
		  else if(!re_n.test(this.value)){
			    pwd_msg.innerHTML='<i class="err"></i>不能全为数字！';
			  }
		  
		  
	  	  else if(!re_t.test(this.value)){
			    pwd_msg.innerHTML='<i class="err"></i>不能全为字母！';
			  }
		  
		  
		  else{
			pwd_msg.innerHTML='<i class="ok"></i>OK！';
			}
		}
		
		pwd2.onblur=function(){
			if(this.value!=pwd.value){
				pwd2_msg.innerHTML='<i class="err"></i>两次输入密码不一致！';
			}
			else{
				pwd2_msg.innerHTML='<i class="ok"></i>OK！';

				}
				
			}
 
  phone.onfocus=function(){
	 phone_msg.style.display="block";
	 phone_msg.innerHTML='<i class="ati"></i>11位有效手机号码'
	 
	 }
	  
  phone.onblur=function(){
	  
	   var read=/[^\d]/g;
		  if(this.value==""){
			  phone_msg.innerHTML='<i class="err"></i>不能为空！';
			  }
			  
		   else if(read.test(this.value)){
			    phone_msg.innerHTML='<i class="err"></i>号码格式不正确！';
			  }
		   else if(this.value.length!=11){
			  phone_msg.innerHTML='<i class="err"></i>请输入11位有效号码！';
		 
			  }
		   else{
				phone_msg.innerHTML='<i class="ok"></i>OK！';

				}
		  
	}
	
	id.onfocus=function(){
	 id_msg.style.display="block";
	 id_msg.innerHTML='<i class="ati"></i>18位有效证件号码'
	 
	 }
	  
  id.onblur=function(){
	  
	   var read=/[^\d]/g;
		  if(this.value==""){
			  id_msg.innerHTML='<i class="err"></i>不能为空！';
			  }
			  
		   else if(read.test(this.value)){
			    id_msg.innerHTML='<i class="err"></i>证件号码格式不正确！';
			  }
		   else if(this.value.length!=18){
			  id_msg.innerHTML='<i class="err"></i>请输入18位有效证件号！';
		 
			  }
		   else{
				id_msg.innerHTML='<i class="ok"></i>OK！';

				}  
	}
	
}

</script>
</body>
</html>