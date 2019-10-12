"use strict";function first(t){return t.firstElementChild||t.firstChild}function last(t){return t.lastElementChild||t.lastChild}function siBling(t){return t.previousElementSibling||t.previousSibling}function nextSb(t){return t.nextElementSibling||t.nextSibling}function css(){if(2==arguments.length){if(getComputedStyle(arguments[0],!1)){var t=arguments[1];return getComputedStyle(arguments[0],!1)[t]}var e=arguments[1];return arguments[0].currentStyle[e]}if(3==arguments.length){var r=arguments[1];arguments[0].style[r]=arguments[2]}}function startMove(i,a,s){clearInterval(i.timer),i.timer=setInterval(function(){var t=!0;for(var e in a){var r=0;r="opacity"==e?100*css(i,e):parseInt(css(i,e));var n=(a[e]-r)/6;n=0<n?Math.ceil(n):Math.floor(n),t=r==a[e],"opacity"==e?(i.style.opacity=(r+n)/100,i.style.filter="alpha(opacity:"+(r+n)+")"):i.style[e]=r+n+"px"}t&&(clearInterval(i.timer),s&&s())},30)}function regular(t){if("account"==t.type){return/^[a-z][\w\-]{5,19}$/.test(t.str)}if("nickname"==t.type){return/^[\u2E80-\u9FFF]+$/.test(t.str)}if("email"==t.type){return/^[a-z0-9][\w\-\.]{2,29}@[a-z0-9\-]{2,67}(\.[a-z\u2E80-\u9FFF]{2,6})+$/.test(t.str)}if("id"==t.type){return/^(\d{17}|\d{14})[\dx]$/.test(t.str)}if("phone"==t.type){return/^1[3-9]\d{9}$/.test(t.str)}if("birthday"==t.type){return/^\d{4}([\/\-]?)\d{1,2}\1\d{1,2}$/.test(t.str)}if("password"==t.type){return/^\S{6,20}$/.test(t.str)}if("day"==t.type){return/^\d{4}([\/\-]?)\d{1,2}\1\d{1,2}$/.test(t.str)}if("url"==pbj.type){return/^http(s)?:\/\/([w]{3}\.)?[a-zA-Z0-9]+\.[a-zA-Z]{3}$/.test(t.str)}}var reg={account:function(t){return/^[a-z][\w\-]{5,19}$/.test(t)},email:function(t){return/^[a-z0-9][\w\-\.]{2,29}@[a-z0-9\-]{2,67}(\.[a-z\u2E80-\u9FFF]{2,6})+$/.test(t)},nickname:function(t){return/^[\u2E80-\u9FFF]+$/.test(t)},id:function(t){return/^(\d{17}|\d{14})[\dx]$/.test(t)},phone:function(t){return/^1[3-9]\d{9}$/.test(t)},birthday:function(t){return/^\d{4}([\/\-]?)\d{1,2}\1\d{1,2}$/.test(t)},password:function(t){return/^\S{6,20}$/.test(t)},url:function(t){return/^http(s)?:\/\/([w]{3}\.)?[a-zA-Z0-9]+\.[a-zA-Z]{3}$/.test(t)}};function href(t){var e="";for(var r in t)e+=r+"="+t[r]+"&";return e.slice(0,-1)}function totime(t){return t<10?t="0"+t:t+""}function ajax(t){var e=t.type,r=t.url,n=t.data,i=void 0===n?"":n,a=t.async,s=void 0===a||a,u=t.succeed,o=void 0===u?null:u,c=t.destatus,l=void 0===c?null:c,f=new XMLHttpRequest;if("get"==e)i&&(r=r+"?"+href(i)),f.open("get",r,s),f.send(null),f.onreadystatechange=function(){4==f.readyState&&(200==f.status?o(f.responseText):l(f.status))};else{f.open("post",r,s),f.setRequestHeader("content-type","application/x-www-form-urlencoded");var d=href(i);f.send(d),f.onreadystatechange=function(){4==f.readyState&&(200==f.status?o(f.responseText):l(f.status))}}}function getcookie(t){var e=document.cookie.split("; "),r=!0,n=!1,i=void 0;try{for(var a,s=e[Symbol.iterator]();!(r=(a=s.next()).done);r=!0){var u=a.value.split("=");if(t==u[0])return u[1]}}catch(t){n=!0,i=t}finally{try{!r&&s.return&&s.return()}finally{if(n)throw i}}}function setcookie(t,e,r){var n=new Date;n.setDate(n.getDate()+r),document.cookie=t+"="+e+";expires="+n+";path=/"}function removecookie(t){setcookie(t,"",-1)}