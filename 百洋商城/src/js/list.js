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
    //模糊搜索
    var val = decodeURI(location.search.slice(1));
    $('.input-right').blur(function () {
        val = $('.input-right').val();
    });
    //查询
    $('.input-btn').click(function () {
        var p = ' <p>' + val + '</p>';
        $('.chaxun-tx').append(p);
        init();
    });
    //渲染列表页
    var ipage = 1;
    var num = 23;
    var ipaixu = 'asc';
    init();
    function init() {
        console.log(val);
        var p = new Promise(function (resolve) {
            $.ajax({
                type: 'get',
                url: '../api/liebiao/list.php',
                dataType: 'json',
                data: {
                    val: val,
                    ipage: ipage,
                    num: num,
                    paixu: ipaixu
                },
                success: function success(str) {
                    resolve(str);
                }
            });
        });
        p.then(function (data) {
            var html = data.json.map(function (item) {
                //渲染商品
                var imgs = item.imgs.map(function (item) {
                    //小图
                    return '<span>\n                            <img src="' + item.img + '"\n                                alt="">\n                        </span>';
                }).join('');
                return '<li data-id="' + item.id + '">\n                <div class="list">\n                    <div class="list-img">\n                        <img src="' + item.img + '"\n                            alt="">\n                    </div>\n                    <div class="list-bottom">\n                        <div class="list-imgs">\n                         ' + imgs + ';\n                        </div>\n                        <p>' + item.name + '</p>\n                        <p class="list-price tx">\n                            <span>\uFFE5' + item.price + '</span>\n                            <span>\uFFE5119.00</span>\n                            <span>\n                                <img src="https://b2cstatic.baiyangwang.com/shop/contracticon/05890672784766467_60.gif"\n                                    alt="">\n                            </span>\n                            <span>\n                                <img src="https://b2cstatic.baiyangwang.com/shop/contracticon/05890672577896183_60.gif"\n                                    alt="">\n                            </span>\n                            <span>\n                                <img src="https://b2cstatic.baiyangwang.com/shop/contracticon/jswl_60.gif" alt="">\n                            </span>\n                        </p>\n                        <p>\n                            <span>\n                                <em></em>\n                                \u52A0\u5165\u5BF9\u6BD4\n                            </span>\n                        </p>\n                        <div class="sell-stat">\n                            <span>\n                                1578\n                                <p>\u5546\u54C1\u9500\u91CF</p>\n                            </span>\n                            <span>\n                                2016\n                                <p>\u7528\u6237\u8BC4\u8BBA</p>\n                            </span>\n                            <span></span>\n                        </div>\n                        <div class="list-store">\n                            \u767E\u6D0B\u5065\u5EB7\u8DE8\u5883\u81EA\u8425\u5E97\n                        </div>\n                        <div class="list-car">\n                            <i class="iconfont icongouwuchekong"></i>\n                            \u52A0\u5165\u8D2D\u7269\u8F66\n                        </div>\n                    </div>\n                </div>\n            </li>';
            }).join('');
            $('#list').html(html);

            //选项卡分页
            function tabColor() {
                if (ipage == 1) {
                    $('.tab-prve').css('color', '#AAA');
                    $('.tab-one').css('color', '#AAA');
                } else {
                    $('.tab-prve').css('color', '#555');
                    $('.tab-one').css('color', '#555');
                }
                if (ipage == numipg) {
                    $('.tab-next').css('color', '#AAA');
                    $('.tab-last').css('color', '#AAA');
                } else {
                    $('.tab-next').css('color', '#555');
                    $('.tab-last').css('color', '#555');
                }
            }
            var sum = data.sum;
            var numipg = Math.ceil(sum / num);
            var btnsum = '';
            for (var i = 0; i < numipg; i++) {
                //渲染分页
                btnsum += '<span>' + (i + 1) + '</span>';
            }
            $('.tab-num').html(btnsum);
            $('.tab-num span').eq(ipage - 1).attr('class', 'tab-active');
            $('.tab-num').on('click', 'span', function () {
                ipage = $(this).html();
                init();
                tabColor();
            });
            //上一页
            $('.tab-prve').off('click').on('click', function () {
                if (ipage > 1) {
                    ipage--;
                    init();
                }
                tabColor();
            });
            //下一页
            $('.tab-next').off('click').on('click', function () {
                if (ipage < numipg) {
                    ipage++;
                    init();
                }
                tabColor();
            });
            //首页
            $('.tab-one').on('click', function () {
                ipage = 1;
                tabColor();
                init();
            });
            //末页
            $('.tab-last').on('click', function () {
                ipage = numipg;
                tabColor();
                init();
            });
            //排序的按钮高亮
            $('.list-nav-right').off('click').on('click', 'span', function () {
                //点击
                $(this).attr('class', 'nav-active').siblings().attr('class', '');
                if ($(this).attr('id') == 'paixu') {
                    //用来价格排序
                    if (ipaixu == 'asc') {
                        ipage = 1;
                        ipaixu = 'desc';
                        $(this).find('i').attr('class', 'iconfont iconxia');
                        tabColor();
                    } else {
                        ipage = 1;
                        ipaixu = 'asc';
                        $(this).find('i').attr('class', 'iconfont iconxia1');
                        tabColor();
                    }
                    init();
                }
            });
            //小图切换大图
            $('#list li').mouseenter(function () {
                var index = $(this).index();
                $(this).find('.list-imgs span').mouseenter(function () {
                    $(this).css('border', '1px solid #EF3C79').siblings().css('border', '1px solid #F0F0F0');
                    $('.list-img').eq(index).children(0).attr('src', $(this).children(0).attr('src'));
                });
            });
        });
    }
    //吸顶菜单
    var top = $('#list-nav').offset().top;
    $(window).on('scroll', function () {
        if (scrollY >= top) {
            $('#list-nav').css({
                position: 'fixed',
                top: '0',
                left: '57%',
                zIndex: '100'
            });
            $('.nav-left').css({
                position: 'fixed',
                top: '0',
                left: '252px',
                zIndex: '100'
            });
        } else {
            $('#list-nav').css({
                position: 'absolute',
                top: '240px',
                left: '50%',
                zIndex: '1'
            });
            $('.nav-left').css({
                position: 'relative',
                top: '0',
                left: '0',
                zIndex: '5'
            });
        }
    });
    //跳转详情页
    $('#list').on('click', 'li', function () {
        var id = $(this).attr('data-id');
        var cookie = getcookie('username');
        $.ajax({
            type: 'get',
            url: '../api/footprint/foot.php',
            data: {
                id: id,
                cookie: cookie
            }
        });
        window.open('details.html?' + id);
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
                    return '<li data-id="' + item.id + '">\n            <div>\n                <img src="' + item.img + '" alt="">\n            </div>\n            <p>' + item.name + '</p>\n            <p><span>\xA5' + item.price + '</span>\xD7<span>' + item.num + '</span></p>\n            <p class="headdel">\u5220\u9664</p>\n        </li>';
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
    //侧栏跳转购物车
    $('.side-car').click(function () {
        if (cookie) {
            window.open('gwc.html');
        } else {
            location.href = 'login.html';
        }
    });
})();