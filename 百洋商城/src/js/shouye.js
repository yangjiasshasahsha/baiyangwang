'use strict';

(function () {
    //跳跃登入注册页
    $('#login').click(function () {
        //登录 
        window.open('html/login.html');
        if (getcookie('url')) {
            removecookie('url');
            setcookie('url', window.location.href, 0);
        } else {
            setcookie('url', window.location.href, 0);
        }
    });

    $('#zhuce').click(function () {
        //注册
        window.open('html/zhuce.html');
    });
    //退出删除
    $('#tuichu').click(function () {
        removecookie('username');
        window.open('html/login.html');
    });
    //足迹
    var cookie = getcookie('username');
    $.ajax({
        type: 'get',
        url: 'api/footprint/foot.php',
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
            url: 'api/shoppingcar/car.php',
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
                    return '<li data-id="' + item.id + '">\n                 <div>\n                     <img src="' + item.img + '" alt="">\n                 </div>\n                 <p>' + item.name + '</p>\n                 <p><span>\xA5' + item.price + '</span>\xD7<span>' + item.num + '</span></p>\n                 <p class="headdel">\u5220\u9664</p>\n             </li>';
                }).join('');
                //渲染总数量以及总价格 
                $('.car-list').html(html);
                $('.headnumall').html(str.obj.length);
                $('.headmeyall').html('￥' + meyall.toFixed(2));
                //跳转购物车
                $('.car-foot div').click(function () {
                    var cookie = getcookie('username');
                    if (cookie) {
                        window.open('html/gwc.html');
                    } else {
                        location.href = 'html/login.html';
                    }
                });
                //删除商品
                $('.headdel').click(function () {
                    var id = $(this.parentNode).attr('data-id');
                    console.log(id);
                    $.ajax({
                        type: 'get',
                        url: 'api/shoppingcar/del.php',
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
            window.open('html/gwc.html');
        } else {
            location.href = 'html/login.html';
        }
    });
    //轮播图1
    var lbtone = new Swiper('#lbt1', {
        speed: 1000,
        autoplay: { //自动轮播
            delay: 3000, //间隔时间
            disableOnInteraction: false //拖拽完后还能继续自动轮播
        },
        loop: true, //无缝 环路
        navigation: { //上下按钮
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev'
        },
        pagination: { //焦点跟随
            el: '.swiper-pagination',
            bulletActiveClass: 'lbt1-active', //自定义焦点的高亮颜色
            clickable: true //点击焦点跳到指定图片
        }
    });
    $('#lbt1').mouseenter(function () {
        //按钮显示与隐藏
        $('.lbt1-prev').css('display', 'block');
        $('.lbt1-next').css('display', 'block');
    });
    $('#lbt1').mouseleave(function () {
        //按钮显示与隐藏
        $('.lbt1-prev').css('display', 'none');
        $('.lbt1-next').css('display', 'none');
    });
    //轮播图2
    var lbtone2 = new Swiper('#lbt2', {
        slidesPerView: 5,
        slidesPerGroup: 5,
        loop: true, //无缝 环路
        pagination: { //焦点跟随
            el: '.swiper-pagination',
            bulletActiveClass: 'lbt2-active', //自定义焦点的高亮颜色
            clickable: true //点击焦点跳到指定图片
        }
    });
    $('#lbt2 .swiper-slide').mouseenter(function () {
        $(this).find('.lbt2-img').css('margin-top', '0px');
        $(this).find('.lbt2-titel').css('margin', '0');
        $(this).find('.lbt2-buy').css('display', 'block');
        $(this).css('border', '1px solid #e1e1e1');
    });
    $('#lbt2 .swiper-slide').mouseleave(function () {
        $(this).find('.lbt2-img').css('margin-top', '10px');
        $(this).find('.lbt2-titel').css('margin-top', '50px');
        $(this).find('.lbt2-buy').css('display', 'none');
        $(this).css('border', '1px solid #fff');
    });
    //轮播图3
    var lbtone3 = new Swiper('#lbt3', {
        speed: 1000,
        autoplay: { //自动轮播
            delay: 2000, //间隔时间
            disableOnInteraction: false //拖拽完后还能继续自动轮播
        },
        slidesPerView: 5,
        slidesPerGroup: 1,
        loop: true, //无缝 环路
        navigation: { //上下按钮
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev'
        }
    });
    $('#lbt3').mouseenter(function () {
        //按钮显示与隐藏
        $('.lbt3-prev').css('display', 'block');
        $('.lbt3-next').css('display', 'block');
    });
    $('#lbt3').mouseleave(function () {
        //按钮显示与隐藏
        $('.lbt3-prev').css('display', 'none');
        $('.lbt3-next').css('display', 'none');
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
        location.href = 'html/list.html?' + val;
    });
    //跳转列表业
    $('#list').click(function () {
        location.href = 'html/list.html';
    });
})();