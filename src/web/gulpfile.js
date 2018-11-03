/// <binding BeforeBuild='sass' />
var gulp = require("gulp");
var fs = require("fs");
var sass = require("gulp-sass");

gulp.task("sass", function () {
    return gulp.src('Styles/**/*.scss')
        .pipe(sass())
        .pipe(gulp.dest('wwwroot/css'));
});