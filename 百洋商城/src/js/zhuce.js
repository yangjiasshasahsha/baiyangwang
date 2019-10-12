'use strict';

(function () {
    //开关
    var telok = 0;
    var yzmok = 0;
    var nameok = 0;
    var pasok = 0;
    var tel = document.getElementById('tel');
    var yzmval = document.getElementById('yzm');
    var yztel = document.getElementsByClassName('yztel')[0];
    var radomyzm = document.getElementsByClassName('yzm')[0];
    var iconcuowu = document.getElementsByClassName('iconcuowu')[0];
    //随机验证码
    yzm({
        ele: radomyzm
    });
    radomyzm.onclick = function () {
        //每次点击随机生成新的验证码
        yzm({
            ele: radomyzm
        });
    };
    //手机号
    tel.onfocus = function () {
        css(tel.parentNode, 'border', '1px solid #EF3C79');
        tel.placeholder = '';
    };
    tel.onblur = function () {
        var val = tel.value.trim();
        if (!val) {
            tel.placeholder = '请输入手机号';
        } else {
            var isok = reg.phone(val);
            if (!isok) {
                css(yztel, 'display', 'block');
                css(tel.parentNode, 'border', '1px solid #EF3C79');
                telok = 0;
            } else {
                css(yztel, 'display', 'none');
                css(tel.parentNode, 'border', '1px solid #ccc');
                telok = 1;
            }
        }
    };
    //验证码
    yzmval.onfocus = function () {
        css(yzmval.parentNode, 'border', '1px solid #EF3C79');
        yzmval.placeholder = '';
    };
    yzmval.onblur = function () {
        var val = yzmval.value.trim().toLowerCase();
        if (!val) {
            yzmval.placeholder = '请输入验证码';
        }
        var yzm = radomyzm.innerText.toLowerCase();
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
    //账号验证
    var name = document.getElementById('name');
    var yzname = document.getElementsByClassName('yzname')[0];
    name.onfocus = function () {
        name.placeholder = '';
        css(yzname, 'display', 'block');
        css(name.parentNode, 'border', '1px solid #EF3C79');
    };
    name.onblur = function () {
        var val = name.value.trim();
        var isok = reg.account(val);
        if (!val) {
            name.placeholder = '请输入账号';
        }
        nameok = 0;
        if (isok) {
            ajax({
                type: 'get',
                url: '../api/zhuce/signIn.php',
                data: {
                    m: 'findname',
                    username: val
                },
                succeed: function succeed(str) {
                    var obj = JSON.parse(str);
                    if (obj.code) {
                        yzname.children[0].innerHTML = obj.message;
                    } else {
                        yzname.children[0].innerHTML = obj.message;
                        css(name.parentNode, 'border', '1px solid #ccc');
                        nameok = 1;
                    }
                }
            });
        } else if (val) {
            yzname.children[0].innerHTML = '请输入符合要求的账号';
        }
    };
    //密码
    var pas = document.getElementById('pas');
    var yzpas = document.getElementsByClassName('yzpas')[0];
    pas.onfocus = function () {
        pas.placeholder = '';
        css(yzpas, 'display', 'block');
        css(pas.parentNode, 'border', '1px solid #EF3C79');
    };
    pas.onblur = function () {
        var val = pas.value.trim();
        if (!val) {
            pas.placeholder = '请输入密码';
            pasok = 0;
        } else {
            css(yzpas, 'display', 'none');
            css(pas.parentNode, 'border', '1px solid #ccc');
            pasok = 1;
        }
    };
    //注册
    var btn = document.getElementById('btn');
    btn.onclick = function () {
        if (pasok && nameok && telok && yzmok) {
            ajax({
                type: 'get',
                url: '../api/zhuce/signIn.php',
                data: {
                    m: 'zhuce',
                    username: name.value.trim(),
                    password: pas.value.trim()
                },
                succeed: function succeed(str) {
                    var obj = JSON.parse(str);
                    if (!obj.code) {
                        window.open('login.html');
                    } else {
                        alert('注册失败');
                    }
                }
            });
        }
    };
    //跳转登录页
    var login = document.getElementById('login');
    login.onclick = function () {
        window.location.href = 'login.html';
    };
})();