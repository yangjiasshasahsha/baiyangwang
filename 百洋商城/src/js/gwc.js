'use strict';

function shoppingCar(_ref) {
    var ele = _ref.ele;

    //动态创建节点
    var head = document.createElement('div'); //动态生成头部
    ele.appendChild(head);
    head.className = 'gwc_hed';
    head.innerHTML = '<input type="checkbox" class="checkall">\n                        <span>\u5168\u9009</span>\n                        <span>\u5546\u54C1</span>\n                        <span>\u5355\u4EF7(\u5143)</span>\n                        <span>\u6570\u91CF</span>\n                        <span>\u5C0F\u8BA1(\u5143)</span>\n                        <span>\u64CD\u4F5C</span>';
    var dianpu = document.createElement('div');
    ele.appendChild(dianpu);
    dianpu.className = 'gwc_dianpu';
    dianpu.innerHTML = '<span>\u5E97\u94FA:</span>\n                        <span>\u767E\u6D0B\u5065\u5EB7\u8DE8\u5883\u81EA\u8425\u5E97</span>\n                        <div>\n                        <span>\u514D\u8FD0\u8D39</span>\n                        <span>\u6EE159\u514D\u8FD0\u8D39</span>\n                        </div>';
    var list = document.createElement('ul'); //添加商品列表节点
    ele.appendChild(list);
    list.className = 'goodslist';
    var allmey = document.createElement('div');
    ele.appendChild(allmey);
    allmey.className = 'gwc_allmey';
    allmey.innerHTML = '<span class="allmey">0.00</span><span>\u5546\u54C1\u603B\u4EF7:</span> ';
    var foot = document.createElement('div'); //动态生成底部
    ele.appendChild(foot);
    foot.className = 'gwc_footer';
    foot.innerHTML = '<span class="delall">\u5168\u5220</span>\n                            <span class="sure">\u786E\u8BA4\u7ED3\u7B97</span>\n                            <span>\u5143</span>\n                            <span class="allmoney">0.00</span>\n                            <span>\u5546\u54C1\u603B\u4EF7\uFF08\u4E0D\u542B\u8FD0\u8D39\u3001\u7A0E\u8D39\uFF09</span>';
    var cookie = getcookie('username');
    creatcar();
    function creatcar() {
        //渲染商品以及结构
        ajax({
            type: 'get',
            url: '../api/shoppingcar/car.php',
            data: {
                cookie: cookie
            },
            succeed: function succeed(str) {
                creat(str);
            }
        });
        function creat(str) {
            var arr = JSON.parse(str);
            var html = '';
            if (arr.obj.length) {
                html = arr.obj.map(function (item) {
                    return '<li data-id="' + item.id + '">\n                    <input type="checkbox" class="check">\n                    <img src="' + item.img + '" alt="" class="gwc_imgs">\n                    <span class="text">\n                    <span> <span>\u6D77\u5916\u8D2D</span> ' + item.name + '</span>\n                   </br>\n                    <span>\n                    <img src="https://b2cstatic.baiyangwang.com/shop/contracticon/05890672784766467_60.gif" alt="">\n                    <img src="https://b2cstatic.baiyangwang.com/shop/contracticon/05890672577896183_60.gif" alt="">\n                    <img src="https://b2cstatic.baiyangwang.com/shop/contracticon/jswl_60.gif" alt="">\n                    </span>\n                    </span>\n                    <span class="money">\uFFE5' + item.price + '</span>\n                    <div class="gwcnum" data-kucun="' + item.sum + '">\n                        <span class="btnjian">-</span>\n                        <input type="text" class="num" value="' + item.num + '">\n                        <span class="btnjia">+</span>\n                    </div>\n                    <span class="moneyall">' + (item.price * item.num).toFixed(2) + '</span>\n                    <span class="scj">\u79FB\u5165\u6536\u85CF\u5939</span>\n                    <span class="del">\u5220\u9664</span>\n            </li>';
                }).join('');
            } else {
                html = '<div class="no-gwc"><img src="../images/nogwc.jpg" alt=""></div>';
            }
            list.innerHTML = html;
            //加减
            var g_num = ele.getElementsByClassName('num'); //商品数量
            var g_btnjia = ele.getElementsByClassName('btnjia'); //加减按钮
            var g_btnjian = ele.getElementsByClassName('btnjian');
            var danjia = ele.getElementsByClassName('money'); //单价
            var money = ele.getElementsByClassName('moneyall'); //单个商品总价

            var _loop = function _loop(i) {
                g_btnjia[i].onclick = function () {
                    var sum = g_btnjia[i].parentNode.dataset.kucun * 1;
                    if (g_num[i].value < sum) {
                        g_num[i].value++;
                    }
                    var dj = danjia[i].innerHTML.slice(1); //取出单价
                    money[i].innerHTML = (dj * g_num[i].value).toFixed(2); //单个商品总价
                    var id = g_btnjia[i].parentNode.parentNode.dataset.id;
                    ajax({
                        type: 'get',
                        url: '../api/shoppingcar/jiajian.php',
                        data: {
                            id: id,
                            num: g_num[i].value
                        },
                        succeed: function succeed() {
                            sumall(); //勾选的总数量和总价格
                        }
                    });
                };
                g_btnjian[i].onclick = function () {
                    if (g_num[i].value > 1) {
                        g_num[i].value--;
                    }
                    var dj = danjia[i].innerHTML.slice(1); //取出单价
                    money[i].innerHTML = (dj * g_num[i].value).toFixed(2); //单个商品总价
                    var id = g_btnjian[i].parentNode.parentNode.dataset.id;
                    ajax({
                        type: 'get',
                        url: '../api/shoppingcar/jiajian.php',
                        data: {
                            id: id,
                            num: g_num[i].value
                        },
                        succeed: function succeed() {
                            sumall(); //勾选的总数量和总价格
                        }
                    });
                };
            };

            for (var i = 0; i < g_btnjia.length; i++) {
                _loop(i);
            }
            //多选
            var check = ele.getElementsByClassName('check'); //获取所有复选框
            var checkall = ele.getElementsByClassName('checkall')[0];
            var checkarr = []; //用来装勾选的商品id

            var _loop2 = function _loop2(i) {
                check[i].onclick = function () {
                    var checknum = 0; //用来计数勾选的个数
                    for (var j = 0; j < check.length; j++) {
                        //每次点击遍历勾选个数
                        if (check[j].checked) {
                            checknum++;
                        }
                        if (checknum == check.length && checknum != 0) {
                            //当个数等于总个数勾选全选
                            checkall.checked = true;
                        } else {
                            checkall.checked = false;
                        }
                    }
                    var id = check[i].parentNode.dataset.id; //勾选存入id
                    if (check[i].checked) {
                        //勾选状态
                        if (checkarr.indexOf(id) == -1) {
                            //如果存在不重复存id
                            checkarr.push(id);
                        }
                    } else {
                        var index = checkarr.indexOf(id); //取消勾选
                        checkarr.splice(index, 1); //删除数组中的id
                    }
                    sumall(); //勾选的总数量和总价格
                    sureok();
                };
            };

            for (var i = 0; i < check.length; i++) {
                _loop2(i);
            }
            //全选
            allcek();
            function allcek() {
                checkall.checked = true;
                if (checkall.checked) {
                    //判断是否全选
                    for (var i = 0; i < check.length; i++) {
                        check[i].checked = true;
                        var id = check[i].parentNode.dataset.id;
                        if (check[i].checked) {
                            //勾选状态
                            if (checkarr.indexOf(id) == -1) {
                                //如果存在不重复存id
                                checkarr.push(id);
                            }
                        }
                    }
                } else {
                    for (var _i = 0; _i < check.length; _i++) {
                        check[_i].checked = false;
                        checkarr = []; //取消全选清空id数组
                    }
                }
                sumall(); //勾选的总数量和总价格
            }
            checkall.onclick = function () {
                if (checkall.checked) {
                    //判断是否全选
                    for (var i = 0; i < check.length; i++) {
                        check[i].checked = true;
                        var id = check[i].parentNode.dataset.id;
                        if (check[i].checked) {
                            //勾选状态
                            if (checkarr.indexOf(id) == -1) {
                                //如果存在不重复存id
                                checkarr.push(id);
                            }
                        }
                    }
                } else {
                    for (var _i2 = 0; _i2 < check.length; _i2++) {
                        check[_i2].checked = false;
                        checkarr = []; //取消全选清空id数组
                    }
                }
                sumall(); //勾选的总数量和总价格
                sureok();
            };
            //结算
            sureok();
            function sureok() {
                var checknum = 0; //用来计数勾选的个数
                for (var j = 0; j < check.length; j++) {
                    //每次点击遍历勾选个数
                    if (check[j].checked) {
                        checknum++;
                    }
                }
                if (checknum > 0) {
                    $('.sure').css('background', '#EF3C79');
                } else {
                    $('.sure').css('background', '#aaa');
                }
            }
            //删除当行
            list.onclick = function (ev) {
                if (ev.target.className == 'del') {
                    var id = ev.target.parentNode.dataset.id;
                    ajax({
                        type: 'get',
                        url: '../api/shoppingcar/del.php',
                        data: {
                            id: id
                        },
                        succeed: function succeed() {
                            creatcar(); //重新渲染购物车
                            checkall.checked = false; //清空全选框
                        }
                    });
                    var index = checkarr.indexOf(ev.target.parentNode.dataset.id); //删除数组id中的该商品id
                    checkarr.splice(index, 1);
                    sumall(); //勾选的总数量和总价格
                }
            };
            //删除多行
            var delall = foot.getElementsByClassName('delall')[0];
            delall.onclick = function () {

                var idarr = JSON.stringify(checkarr); //必须以字符串传给后端不然无法处理
                ajax({
                    type: 'get',
                    url: '../api/shoppingcar/delall.php',
                    data: {
                        idarr: idarr
                    },
                    succeed: function succeed() {
                        checkarr = []; //删除选中的商品后清空数组
                        checkall.checked = false; //清空全选框
                        creatcar(); //重新渲染购物车
                        // sumall();//勾选的总数量和总价格
                    }
                });
            };
            function sumall() {
                //勾选商品总个数  每个功能都要调用
                var allnum = foot.getElementsByClassName('allnum')[0];
                var allmoney = foot.getElementsByClassName('allmoney')[0];
                var allmey1 = allmey.getElementsByClassName('allmey')[0];
                var numall = 0; //选中商品总数量
                var nummoney = 0;
                // for (let i = 0; i < checkarr.length; i++) {//勾选商品总数量
                //     if (check[i].checked) {//如果勾选把数量进行累加
                //         numall += check[i].parentNode.children[4].children[1].value * 1;
                //     }
                // }
                // allnum.innerHTML = numall;//渲染总数量
                for (var i = 0; i < check.length; i++) {
                    if (check[i].checked) {
                        //如果勾选把总价进行累加
                        nummoney += check[i].parentNode.children[5].innerHTML * 1;
                    }
                }
                allmoney.innerHTML = nummoney.toFixed(2); //渲染总价格并保留两位小数
                allmey1.innerHTML = nummoney.toFixed(2); //渲染总价格并保留两位小数
            }
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
                            return '<li data-id="' + item.id + '">\n                 <div>\n                     <img src="' + item.img + '" alt="">\n                 </div>\n                 <p>' + item.name + '</p>\n                 <p><span>\xA5' + item.price + '</span>\xD7<span>' + item.num + '</span></p>\n                 <p class="headdel">\u5220\u9664</p>\n             </li>';
                        }).join('');
                        //渲染总数量以及总价格 
                        $('.car-list').html(html);
                        $('.headnumall').html(str.obj.length);
                        $('.headmeyall').html('￥' + meyall.toFixed(2));
                        //跳转购物车
                        $('.car-foot div').click(function () {
                            window.open('../html/gwc.html');
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
        }
    }
}