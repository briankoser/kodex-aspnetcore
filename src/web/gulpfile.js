/// <binding BeforeBuild='sass, copy-js' ProjectOpened='watch-sass' />
let gulp = require("gulp");
let _ = require('lodash');
let fs = require("fs");
let sass = require("gulp-sass");

let paths = {
    scss: "Styles/**/*.scss",
    css: "./wwwroot/css",
    node: [], //['./node_modules/@ckeditor/ckeditor5-build-classic/build/ckeditor.js'],
    js: "./wwwroot/lib"
};

gulp.task('copy-js', function () {
    _.forEach(paths.node, function (file, _) {
        gulp.src(file)
            .pipe(gulp.dest(paths.js));
    });
});

gulp.task("sass", function () {
    return gulp.src(paths.scss)
        .pipe(sass())
        .pipe(gulp.dest(paths.css));
});

gulp.task('watch-sass', function () {
    gulp.watch(paths.scss, ['sass']);
});