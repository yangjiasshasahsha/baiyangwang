var gulp = require('gulp');
gulp.task('default', ['minify-img'], function () {
    console.log('yes');
});
let babel = require('gulp-babel');
let uglify = require('gulp-uglify');
let rename = require("gulp-rename");
let imgmin = require('gulp-imagemin');
// gulp.task('es6', function () {
//     gulp.src('js/*.js')
//         .pipe(babel({
//             'presets': ['es2015']
//         }))
//         .pipe(gulp.dest('js/'))
// });
// gulp.task('uglify', function () {
//     return gulp.src('js/*.js')
//         .pipe(uglify())
//         // .pipe(rename('es5-indexjs.min.js'))
//         .pipe(gulp.dest('js-min/'));
// });

//压缩css
// let cssmin = require('gulp-cssmin');
// gulp.task('cssmin', function () {
//     return gulp.src('css/*.css')
//         .pipe(cssmin())
//         // .pipe(rename('index.min.css'))
//         .pipe(gulp.dest('css-min/'));
// });

//压缩图片

gulp.task('minify-img', function () {
    gulp.src('images/*.{png,jpg,gif,ico}')
        .pipe(imgmin())
        .pipe(gulp.dest("img-min/"))
});

//压缩html
// let htmlmin = require('gulp-htmlmin');
// gulp.task('minify-html', function () {
//     var options = {
//         removeComments: true,//清除HTML注释
//         collapseWhitespace: true,//压缩HTML
//         collapseBooleanAttributes: false,//省略布尔属性的值 <input checked="true"/> ==> <input />
//         removeEmptyAttributes: false,//删除所有空格作属性值 <input id="" /> ==> <input />
//         removeScriptTypeAttributes: true,//删除<script>的type="text/javascript"
//         removeStyleLinkTypeAttributes: true,//删除<style>和<link>的type="text/css"
//         minifyJS: true,//压缩页面JS
//         minifyCSS: true//压缩页面CSS
//     };
//     gulp.src('html/*.html')
//         .pipe(htmlmin(options))
//         // .pipe(rename({ suffix: '.min' }))
//         .pipe(gulp.dest('html-min/'))
// });