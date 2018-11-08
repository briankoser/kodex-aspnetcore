/// <binding BeforeBuild='sass' ProjectOpened='watch-sass' />
let gulp = require("gulp");
let fs = require("fs");
let sass = require("gulp-sass");

let paths = {
    scss: "Styles/**/*.scss",
    css: "./wwwroot/css"
};

gulp.task("sass", function () {
    return gulp.src(paths.scss)
        .pipe(sass())
        .pipe(gulp.dest(paths.css));
});

gulp.task('watch-sass', function () {
    gulp.watch(paths.scss, ['sass']);
});