/* Basic tasks */
'use strict';

var gulp = require('gulp');
var sass = require('gulp-sass');


gulp.task('sass', function() {
	gulp.src('./web/assets/frontend/sass/mon_compte/**/*.scss')
		.pipe(sass())
		.pipe(gulp.dest('./web/assets/frontend/css/'));
});

gulp.task('watch', function(){
	gulp.watch('./web/assets/frontend/sass/mon_compte/**/*.scss', ['sass']);
})