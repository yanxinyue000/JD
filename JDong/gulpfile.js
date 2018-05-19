var gulp        = require('gulp')
var connect     =require('gulp-connect');
var sass=require('gulp-sass');
gulp.task('connect',function(){
	connect.server({
		port:8888,
		livereload:true
	});
});
gulp.task('sass',function(){
	gulp.src('./scss/*.scss')
	.pipe(sass())
	.pipe(gulp.dest('./css'))
})
gulp.task('html',function(){
	gulp.src(['./index.html','./css/*.css','./js/*.js','./scss/*.scss','./js/App/*.js','/php/*.php'])
	.pipe(connect.reload());
});
gulp.task('watch',function(){
	gulp.watch(['./index.html','./css/*.css','./js/*.js','./scss/*.scss','./js/App/*.js','/php/*.php'],['html','sass'])
});

gulp.task('default',['connect','watch']);
