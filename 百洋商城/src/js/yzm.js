'use strict';

// var box = document.getElementById('box');
// yzm({
//     ele:box
// })


function yzm(_ref) {
    var ele = _ref.ele;

    var html = 'qwertyuiopasdfghjklzxcvbnm0123456789QWERTYUIOPASDFGHJKLZXCVBNM0123456789';
    var code = '';
    for (var i = 0; i < 4; i++) {
        var dom = parseInt(Math.random() * html.length);
        code += '<span class="span">' + html[dom] + '</span>';
    }
    ele.innerHTML = code;
    var span = ele.getElementsByClassName('span');
    var suiji = 'abcdef0123456789';
    for (var j = 0; j < 4; j++) {
        var yanse = '';
        for (var i = 0; i < 6; i++) {
            var cor = parseInt(Math.random() * suiji.length);
            yanse += suiji[cor];
        }
        span[j].style.color = "#" + yanse;
    }
}