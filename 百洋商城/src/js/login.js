'use strict';

(function () {
    //账号
    var name = document.getElementById('name');
    name.onfocus = function () {
        css(name.parentNode, 'border', '1px solid #EF3C79');
        name.placeholder = '';
    };
    name.onblur = function () {
        css(name.parentNode, 'border', '1px solid #ccc');
        var val = name.value.trim();
        if (!val) {
            name.placeholder = '可使用已注册的用户名或手机号登录';
        }
    };
    //密码
    var pas = document.getElementById('pas');
    pas.onfocus = function () {
        css(pas.parentNode, 'border', '1px solid #EF3C79');
        pas.placeholder = '';
    };
    pas.onblur = function () {
        css(pas.parentNode, 'border', '1px solid #ccc');
        var val = pas.value.trim();
        if (!val) {
            pas.placeholder = '6-20个大小写英文字母、符号或数字';
        }
    };
    //验证码
    var yzmval = document.getElementById('yzm');
    var ranyzm = document.getElementsByClassName('yzm')[0];
    var iconcuowu = document.getElementsByClassName('iconcuowu')[0];
    var yzmok = 0;
    yzm({
        ele: ranyzm
    });
    ranyzm.onclick = function () {
        yzm({
            ele: ranyzm
        });
    };
    yzmval.onfocus = function () {
        css(yzmval.parentNode, 'border', '1px solid #EF3C79');
        yzmval.placeholder = '';
    };
    yzmval.onblur = function () {
        var val = yzmval.value.trim().toLowerCase();
        if (!val) {
            yzmval.placeholder = '请输入验证码';
        }
        var yzm = ranyzm.innerText.toLowerCase();
        if (val == yzm) {
            css(iconcuowu, 'display', 'none');
            css(yzmval.parentNode, 'border', '1px solid #ccc');
            yzmok = 1;
        } else {
            css(iconcuowu, 'display', 'block');
            css(yzmval.parentNode, 'border', '1px solid #EF3C79');
            yzmok = 0;
        }
    };
    //登录
    var btn = document.getElementById('btn');
    var check = document.getElementById('check');
    btn.onclick = function () {
        var username = name.value.trim();
        var password = pas.value.trim();
        if (username && password && yzmok) {
            ajax({
                type: 'get',
                url: '../api/zhuce/signIn.php',
                data: {
                    m: 'login',
                    username: username,
                    password: password
                },
                succeed: function succeed(str) {
                    var obj = JSON.parse(str);
                    if (obj.code) {
                        var src = getcookie('url');
                        console.log(src);
                        if (check.checked) {
                            //判断是否勾选7天免登录
                            setcookie('username', name.value.trim(), 7);
                            window.location.href = src;
                        } else {
                            setcookie('username', name.value.trim());
                            window.location.href = src;
                        }
                    }
                }
            });
        }
    };
    //跳转注册
    var zhuce = document.getElementById('zhuce');
    zhuce.onclick = function () {
        window.location.href = 'zhuce.html';
    };
})();