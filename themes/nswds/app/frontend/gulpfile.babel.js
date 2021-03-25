import gulp from 'gulp';
import sass from 'gulp-sass';
import postcss from 'gulp-postcss';
import sourcemaps from 'gulp-sourcemaps';
import rollup from 'gulp-better-rollup';
import babel from 'rollup-plugin-babel';
import cssnano from 'cssnano';
import concatjs from 'gulp-concat';
import svgSprite from 'gulp-svg-sprite';
import uglifyjs from 'gulp-uglify-es';
import resolve from 'rollup-plugin-node-resolve'
import commonjs from 'rollup-plugin-commonjs'
import del from 'del';


const thirdparty = {
    'javascript': './node_modules/nsw-design-system/dist/js/main.js',
    'css': './node_modules/nsw-design-system/dist/css/main.css',
}

const config = {
    'src': {
        'css': './src/scss/**/*.scss',
        'js': './src/js/**/*.js',
        'svg': './src/svg/**/*.svg',
        'svgSprite': {
            'mode': {
                'defs': {
                    'dest': "",
                    'sprite': 'sprite.svg'
                }
            }
        }
    },
    'dist': {
        'css': 'dist/css',
        'js': 'dist/javascript',
        'svg': 'dist/assets/svg'
    },

}

gulp.task('clean', function () {
    return del(['dist/*'], { dot: true })
});


gulp.task('scss', function () {
    return gulp.src([
        // thirdparty.css,
        config.src.css
    ])
        .pipe(sass().on('error', sass.logError))
        .pipe(sourcemaps.init())
        .pipe(postcss([
            cssnano()
        ]))
        .pipe(sourcemaps.write('.'))
        .pipe(gulp.dest(config.dist.css))
});

gulp.task('svg', function () {
    return gulp.src(config.src.svg)
        .pipe(svgSprite(config.src.svgSprite))
        .on('error', (error) => {
            console.log(error)
        })
        .pipe(gulp.dest(config.dist.svg))
});

gulp.task('js', function () {
    return gulp.src([thirdparty.javascript, config.src.js])
        .pipe(
            rollup(
                {
                    plugins: [
                        babel(), resolve(), commonjs()
                    ],
                },
                { name: 'NSW', format: 'umd', }
            )
        )
        .pipe(concatjs('app.js'))
        .pipe(uglifyjs())
        .pipe(sourcemaps.init())
        .pipe(sourcemaps.write('.'))
        .pipe(gulp.dest(config.dist.js))
})

gulp.task('watch', function () {
    gulp.watch('./src/**/*', gulp.parallel('scss', 'js', 'svg'));
});

gulp.task('build', gulp.parallel('clean', 'js', 'scss', 'svg'));
gulp.task('default', gulp.parallel('build', 'watch'));
