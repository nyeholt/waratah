import gulp from 'gulp';
import sass from 'gulp-sass';
import postcss from 'gulp-postcss';
import sourcemaps from 'gulp-sourcemaps';
import rollup from 'gulp-better-rollup';
import babel from 'rollup-plugin-babel';
import cssnano from 'cssnano';
import concat from 'gulp-concat';
import svgSprite from 'gulp-svg-sprite';
import uglifyjs from 'gulp-uglify-es';
import resolve from 'rollup-plugin-node-resolve'
import commonjs from 'rollup-plugin-commonjs'
import del from 'del';
import rename from 'gulp-rename';
import filter from 'gulp-filter';
import gulpDebug from 'gulp-debug';
import mkdirp from 'mkdirp';

const designSystem = {
  'src': {
    'js': './node_modules/nsw-design-system/dist/js/main.js',
    'css': ''
  }
};

const config = {
    'src': {
        'css': [
          './src/scss/app.scss',
          // the relative path to the Silverstripe app folder
          '../../../../../../../mysite/frontend/src/scss/app.scss'
        ],
        'js': [
          designSystem.src.js,
          './src/js/app.js',
          // the relative path to the Silverstripe app folder
          '../../../../../../../mysite/frontend/src/js/app.js'
        ],
        'svg': [
          './src/svg/**/*.svg'
        ],
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
    gulpDebug( {'title': 'CLEAN' } );
    let delDist = del([ 'dist/*' ], { dot: true } );
    let mkdirCSS = mkdirp(config.dist.css);
    gulpDebug( {'title': 'mkdirp:' + config.dist.css } );
    let mkdirJS = mkdirp(config.dist.js);
    gulpDebug( {'title': 'mkdirp:' + config.dist.js } );
    let mkdirSVG = mkdirp(config.dist.svg);
    gulpDebug( {'title': 'mkdirp:' + config.dist.svg } );
    return delDist && mkdirCSS && mkdirJS && mkdirSVG;
});

gulp.task('scss', function () {

    return gulp.src(config.src.css, {allowEmpty: true})
      .pipe( gulpDebug( {'title': 'SCSS process' }))
      .pipe(sass().on('error', sass.logError))
      .pipe(sourcemaps.init())
      .pipe( gulpDebug( {'title': 'concat to app.css' }))
      .pipe(concat('app.css'))
      .pipe(sourcemaps.write('.'))
      // output non-minified
      .pipe(gulp.dest(config.dist.css))
      .pipe(filter('**/*.css'))
      // minify
      .pipe( gulpDebug( {'title': 'minify app.css' }))
      .pipe(postcss([
          cssnano()
      ]))
      .pipe(rename({ suffix: '.min' }))
      .pipe( gulpDebug( {'title': 'write minified app.css' }))
      .pipe(gulp.dest(config.dist.css));

});

gulp.task('svg', function () {

    return gulp.src(config.src.svg)
        .pipe( gulpDebug( {'title': 'SVG process' }))
        .pipe(svgSprite(config.src.svgSprite))
        .on('error', (error) => {
            console.log(error)
        })
        .pipe( gulpDebug( {'title': 'write SVG dist' }))
        .pipe(gulp.dest(config.dist.svg));

});

gulp.task('js', function () {

    return gulp.src(config.src.js, {allowEmpty: true})
        .pipe( gulpDebug( {'title': 'JS process' }))
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
        .pipe(sourcemaps.init())
        .pipe( gulpDebug( {'title': 'concat app.js' }))
        .pipe(concat('app.js'))
        // output non-uglified
        .pipe(sourcemaps.write('.'))
        .pipe(gulp.dest(config.dist.js))
        // filter only JS files
        .pipe(filter('**/*.js'))
        // uglify
        .pipe( gulpDebug( {'title': 'uglify app.js' }))
        .pipe(uglifyjs())
        .pipe(rename({ suffix: '.min' }))
        .pipe( gulpDebug( {'title': 'write minified app.js' }))
        .pipe(gulp.dest(config.dist.js));

})

gulp.task('watch', function () {
    gulp.watch('./src/**/*', gulp.parallel('scss', 'js', 'svg'));
});

gulp.task('build', gulp.parallel('clean', 'js', 'scss', 'svg'));
gulp.task('default', gulp.parallel('build', 'watch'));
