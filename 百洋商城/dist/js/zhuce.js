"use strict";!function(){var o=0,c=0,s=0,n=0,l=document.getElementById("tel"),t=document.getElementById("yzm"),r=document.getElementsByClassName("yztel")[0],a=document.getElementsByClassName("yzm")[0],d=document.getElementsByClassName("iconcuowu")[0];yzm({ele:a}),a.onclick=function(){yzm({ele:a})},l.onfocus=function(){css(l.parentNode,"border","1px solid #EF3C79"),l.placeholder=""},l.onblur=function(){var e=l.value.trim();if(e){var n=reg.phone(e);o=n?(css(r,"display","none"),css(l.parentNode,"border","1px solid #ccc"),1):(css(r,"display","block"),css(l.parentNode,"border","1px solid #EF3C79"),0)}else l.placeholder="请输入手机号"},t.onfocus=function(){css(t.parentNode,"border","1px solid #EF3C79"),t.placeholder=""},t.onblur=function(){var e=t.value.trim().toLowerCase();e||(t.placeholder="请输入验证码");var n=a.innerText.toLowerCase();c=e==n?(css(d,"display","none"),css(t.parentNode,"border","1px solid #ccc"),1):(css(d,"display","block"),css(t.parentNode,"border","1px solid #EF3C79"),0)};var i=document.getElementById("name"),u=document.getElementsByClassName("yzname")[0];i.onfocus=function(){i.placeholder="",css(u,"display","block"),css(i.parentNode,"border","1px solid #EF3C79")},i.onblur=function(){var e=i.value.trim(),n=reg.account(e);e||(i.placeholder="请输入账号"),s=0,n?ajax({type:"get",url:"../api/zhuce/signIn.php",data:{m:"findname",username:e},succeed:function(e){var n=JSON.parse(e);n.code?u.children[0].innerHTML=n.message:(u.children[0].innerHTML=n.message,css(i.parentNode,"border","1px solid #ccc"),s=1)}}):e&&(u.children[0].innerHTML="请输入符合要求的账号")};var p=document.getElementById("pas"),m=document.getElementsByClassName("yzpas")[0];p.onfocus=function(){p.placeholder="",css(m,"display","block"),css(p.parentNode,"border","1px solid #EF3C79")},p.onblur=function(){var e=p.value.trim();n=e?(css(m,"display","none"),css(p.parentNode,"border","1px solid #ccc"),1):(p.placeholder="请输入密码",0)},document.getElementById("btn").onclick=function(){n&&s&&o&&c&&ajax({type:"get",url:"../api/zhuce/signIn.php",data:{m:"zhuce",username:i.value.trim(),password:p.value.trim()},succeed:function(e){JSON.parse(e).code?alert("注册失败"):window.open("login.html")}})},document.getElementById("login").onclick=function(){window.location.href="login.html"}}();