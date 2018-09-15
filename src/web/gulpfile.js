var gulp = require("gulp")
var fs = require("fs")
var sass = require("gulp-sass")

gulp.task("sass", function () {
    return gulp.src('Styles/site.scss')
        .pipe(sass())
        .pipe(gulp.dest('wwwroot/css'));
});