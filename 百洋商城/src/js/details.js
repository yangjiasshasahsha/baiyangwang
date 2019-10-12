'use strict';

(function () {
    //回到首页
    $('.menu li').eq(0).click(function () {
        location.href = '../index.html';
    });
    //跳跃登入注册页
    $('#login').click(function () {
        //登录 
        window.open('login.html');
        if (getcookie('url')) {
            removecookie('url');
            setcookie('url', window.location.href, 0);
        } else {
            console.log(window.location.href);
            setcookie('url', window.location.href, 0);
        }
    });

    $('#zhuce').click(function () {
        //注册
        window.open('zhuce.html');
    });
    //退出删除
    $('#tuichu').click(function () {
        removecookie('username');
        window.open('login.html');
    });
    //模糊查询
    var val = '';
    $('.input-right').blur(function () {
        val = $('.input-right').val();
    });
    //查询
    $('.input-btn').click(function () {
        var p = ' <p>' + val + '</p>';
        $('.chaxun-tx').append(p);
        location.href = 'list.html?' + val;
    });
    //详情页渲染
    var id = location.search.slice(1);
    var p = new Promise(function (resolve) {
        $.ajax({
            type: 'get',
            url: '../api/liebiao/xqy.php',
            data: {
                id: id
            },
            dataType: 'json',
            success: function success(str) {
                resolve(str);
            }
        });
    });
    p.then(function (data) {
        var imgs = data.imgs.map(function (item) {
            return '<img src="' + item + '" alt="">';
        });
        var html = data.content.map(function (item) {
            return ' <div id="left-imgs">\n        <div class="ncs-handle">\n            <span>\u5206\u4EAB (0)</span>\n            <span>\u6536\u85CF\u5546\u54C1 (0)</span>\n            <span>\n                <i class="iconfont iconzhengfangxing"></i>\n                \u52A0\u5165\u5BF9\u6BD4\n            </span>\n            <span>\u4E3E\u62A5</span>\n        </div>\n    </div>\n    <div id="right-goodslist">\n        <div class="topname">\n            <img src="../images//xqy-name.jpg" alt="">\n            <span>\u7F8E\u56FD</span>\n        </div>\n        <div class="name">\n            <h3>' + item.name + '</h3>\n            <p>\u3010\u6BCF\u6B211\u7247\uFF0C\u6BCF\u65E51-2\u6B21\uFF0C\u4E3A\u6210\u5E74\u5973\u6027\u8BBE\u8BA1\uFF0C\u9002\u5408\u8840\u8102\u504F\u9AD8\u7684\u6210\u5E74\u5973\u6027\uFF0C\u4E2D\u8001\u5E74\u5973\u6027\u3001\u66F4\u5E74\u671F\u5973\u6027\u3011</p>\n            <p>\u3010\u4EA7\u54C1\u6548\u671F2020-12\u3011</p>\n            <p>\u3010\u8FEA\u5DE7\u5B98\u65B9\u798F\u5229Q\u7FA4118772516\u3011</p>\n        </div>\n        <div class="title">\n            <p>\n                <span>\u5E02\u573A\u4EF7</span>\n                <span> \xA5396.00</span>\n            </p>\n            <p>\n                <span>\u5546\u57CE\u4EF7</span>\n                <span> \xA5' + item.price + '</span>\n            </p>\n            <p>\n                <span>\u5546\u57CE\u8BC4\u5206</span>\n                <span>\n                  <img src="../images//star-on.png" alt="">\n                    <img src="../images//star-on.png" alt="">\n                    <img src="../images//star-on.png" alt="">\n                    <img src="../images//star-on.png" alt="">\n                    <img src="../images//star-on.png" alt="">\n                </span>\n                <span>\u5171\u670926\u6761\u8BC4\u4EF7</span>\n                <span>(\u9500\u91CF\uFF1A41)</span>\n            </p>\n        </div>\n        <div class="yunfei">\n            <span>\u8FD0\u8D39:</span>\n            <div>\n                <span>\u5B81\u6CE2\u4FDD\u7A0E\u4ED3 \u81F3</span>\n                <select name="" id="">\n                    <option value="">\u8BF7\u9009\u62E9\u5730\u533A</option>\n                </select>\n                <span>\u6709\u8D27</span>\n                <span>\u514D\u8FD0\u8D39</span>\n            </div>\n        </div>\n        <div class="logistics">\n            <span>\u7A0E\u8D39:</span>\n            <span>\u514D\u7A0E</span>\n        </div>\n        <div class="pushcar">\n            <input type="text" value="1" id="num">\n            <i class="iconfont iconshangjiantou jia"></i>\n            <i class="iconfont iconxiajiantou jian"></i>\n            <span class="car">\n                <i class="iconfont icongouwuchekong"></i>\n                \u52A0\u5165\u8D2D\u7269\u8F66\n            </span>\n            <span class="buy">\u7ACB\u5373\u8D2D\u4E70</span>\n            <div>\n            <i></i>\n            \u60A8\u9009\u62E9\u7684\u5546\u54C1\u5E93\u5B58\n            <span>' + item.sum + '</span>\n            \u4EF6\n            </div>\n        </div>\n        <div class="foot">\n            <span>\u670D\u52A1\u627F\u8BFA:</span>\n            <span>\n                <img src="../images/xqy-l1.gif" alt="">\n                100%\u6B63\u54C1\u4FDD\u8BC1\n            </span>\n            <span>\n                <img src="../images/xqy-l2.gif" alt="">\n                7\u5929\u65E0\u5FE7\u552E\u540E\n            </span>\n            <span>\n                <img src="../images/xqy-l3.gif" alt="">\n                \u8DE8\u5883\u5546\u54C1\n            </span>\n            <div class="carhint">\n                <p>\u6210\u529F\u6DFB\u52A0\u8D2D\u7269\u8F66</p>\n                <p>\n                   <span>\u8D2D\u7269\u8F66\u5171\u6709</span>\n                   <span class="num"></span>\n                   <span>\u79CD\u5546\u54C1 \u603B\u91D1\u989D\u4E3A</span>\n                   <span class="allmoney"></span>\n                    </p>\n                <span class="lookcar">\u67E5\u770B\u8D2D\u7269\u8F66</span>\n                <span class="goonbuy">\u7EE7\u7EED\u8D2D\u7269</span>\n                <span class="close">x</span>\n            </div>\n        </div>\n    </div>';
        });
        $('#bigglass').html(html);
        //放大镜
        var box = document.getElementById('left-imgs');
        var big = document.getElementById('bigglass');
        bigglass({
            big: big,
            ele: box,
            imglist: data.imgs
        });
        $('#num').mouseenter(function () {
            $('.pushcar div').css('display', 'block');
        });
        $('#num').mouseleave(function () {
            $('.pushcar div').css('display', 'none');
        });
        $('.car').mouseenter(function () {
            $('.pushcar div').css('display', 'block');
        });
        $('.car').mouseleave(function () {
            $('.pushcar div').css('display', 'none');
        });
        $('.buy').mouseenter(function () {
            $('.pushcar div').css('display', 'block');
        });
        $('.buy').mouseleave(function () {
            $('.pushcar div').css('display', 'none');
        });
        //数量加减
        $('.jia').click(function () {
            var val = $('#num').val();
            val++;
            if (val > data.content[0].sum) {
                val = data.content[0].sum;
            }
            $('#num').val(val);
        });
        $('.jian').click(function () {
            var val = $('#num').val();
            val--;
            if (val < 1) {
                val = 1;
            }
            $('#num').val(val);
        });
        $('#num').blur(function () {
            var val = $('#num').val();
            if (val > data.content[0].sum) {
                val = data.content[0].sum;
            }
            if (val < 1) {
                val = 1;
            }
            $('#num').val(val);
        });
        //足迹
        var cookie = getcookie('username');
        $.ajax({
            type: 'get',
            url: '../api/footprint/foot.php',
            data: {
                cookie: cookie
            },
            dataType: 'json',
            success: function success(str) {
                var html = str.map(function (item) {
                    return '<div><img src="' + item.img + '" alt=""></div>';
                }).join('');
                $('.my-zuji-list').html(html);
            }
        });
        //小购物车
        creatcarr();
        function creatcarr() {
            $.ajax({
                type: 'get',
                url: '../api/shoppingcar/car.php',
                data: {
                    cookie: cookie
                },
                dataType: 'json',
                success: function success(str) {
                    //购物车商品个数
                    $('.numcar').html(str.obj.length);
                    //小购物车
                    var meyall = 0;
                    var html = str.obj.map(function (item) {
                        meyall += item.num * item.price * 1;
                        return '<li data-id="' + item.id + '">\n                                    <div>\n                                        <img src="' + item.img + '" alt="">\n                                    </div>\n                                    <p>' + item.name + '</p>\n                                    <p><span>\xA5' + item.price + '</span>\xD7<span>' + item.num + '</span></p>\n                                    <p class="headdel">\u5220\u9664</p>\n                                </li>';
                    }).join('');
                    //渲染总数量以及总价格 
                    $('.car-list').html(html);
                    $('.headnumall').html(str.obj.length);
                    $('.headmeyall').html('￥' + meyall.toFixed(2));
                    //跳转购物车
                    $('.car-foot div').click(function () {
                        var cookie = getcookie('username');
                        if (cookie) {
                            window.open('gwc.html');
                        } else {
                            location.href = 'login.html';
                        }
                    });
                    //删除商品
                    $('.headdel').click(function () {
                        var id = $(this.parentNode).attr('data-id');
                        console.log(id);
                        $.ajax({
                            type: 'get',
                            url: '../api/shoppingcar/del.php',
                            data: {
                                id: id
                            },
                            success: function success(str) {
                                creatcarr();
                            }
                        });
                    });
                }

            });
        }

        //加入购物车
        $('.car').click(function () {
            var num = $('#num').val();
            if (cookie) {
                var pcar = new Promise(function (resolve) {
                    $.ajax({
                        type: 'get',
                        url: '../api/shoppingcar/car.php',
                        data: {
                            id: id,
                            cookie: cookie,
                            num: num
                        },
                        dataType: 'json',
                        success: function success(str) {
                            creatcarr(); //渲染小购物车
                            //总数量
                            var sumprice = 0;
                            str.obj.map(function (item) {
                                sumprice += item.num * item.price;
                            });
                            $('.num').html(str.obj.length);
                            //总价格
                            $('.allmoney').html('￥' + sumprice.toFixed(2));
                            //提示
                            $('.carhint').css('display', 'block');
                        }
                    });
                });
            } else {
                if (getcookie('url')) {
                    removecookie('url');
                    setcookie('url', window.location.href, 0);
                } else {
                    setcookie('url', window.location.href, 0);
                }
                window.location.href = 'login.html';
            }
        });
        //关闭购物车提示
        $('.close').click(function () {
            $('.carhint').css('display', 'none');
        });
        //查看购物车
        $('.lookcar').click(function () {
            location.href = '../html/gwc.html';
        });
        //继续购物
        $('.goonbuy').click(function () {
            $('.carhint').css('display', 'none');
        });
    });
    //留言板
    $('.right-menu span').eq(0).css({
        'borderTop': '3px solid #ef3c79',
        'borderBottom': "3px solid #fff"
    });
    $('.right-menu').on('click', 'span', function () {
        $(this).css({
            'borderTop': '3px solid #ef3c79',
            'borderBottom': "3px solid #fff"
        }).siblings().css({
            'borderTop': '3px solid #fff',
            'borderBottom': "none"
        });
    });
    //吸顶菜单
    var top = $('#text').offset().top;
    $(window).scroll(function () {
        if (scrollY > top) {
            $('.right-menu').css({
                position: 'fixed',
                top: '0'
            });
        } else {
            $('.right-menu').css({
                position: 'absolute',
                top: '0'
            });
        }
    });
    //侧栏跳转购物车
    $('.side-car').click(function () {
        var cookie = getcookie('username');
        if (cookie) {
            window.open('gwc.html');
        } else {
            location.href = 'login.html';
        }
    });
})();