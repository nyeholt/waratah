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
import rename from 'gulp-rename';
import filter from 'gulp-filter';
import mergeStream from 'merge-stream';

const config = {
    'src': {
        'css': [
          './node_modules/nsw-design-system/dist/css/main.css',
          './src/scss/app.scss',
          // the relative path to the Silverstripe app folder
          '../../../../../../../mysite/frontend/src/scss/app.scss'
        ],
        'js': [
          './node_modules/nsw-design-system/dist/js/main.js',
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
    return del(['dist/*'], { dot: true })
});


gulp.task('scss', function () {
    let stream = mergeStream();

    config.src.css.forEach((item, i) => {

      stream.add( gulp.src(item)
          .pipe(sass().on('error', sass.logError))
          .pipe(sourcemaps.init())
          .pipe(sourcemaps.write('.'))
          // output non-minified
          .pipe(gulp.dest(config.dist.css))
          .pipe(filter('**/*.css'))
          // minfify
          .pipe(postcss([
              cssnano()
          ]))
          .pipe(rename({ suffix: '.min' }))
          .pipe(gulp.dest(config.dist.css))
      );
    });

    return stream;

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
  let stream = mergeStream();

  config.src.css.forEach((item, i) => {
    stream.add( gulp.src(config.src.js)
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
        .pipe(concatjs('app.js'))
        // output non-uglified
        .pipe(sourcemaps.write('.'))
        .pipe(gulp.dest(config.dist.js))
        // filter only JS files
        .pipe(filter('**/*.js'))
        // uglify
        .pipe(uglifyjs())
        .pipe(rename({ suffix: '.min' }))
        .pipe(gulp.dest(config.dist.js))

      );

    });

    return stream;
})

gulp.task('watch', function () {
    gulp.watch('./src/**/*', gulp.parallel('scss', 'js', 'svg'));
});

gulp.task('build', gulp.parallel('clean', 'js', 'scss', 'svg'));
gulp.task('default', gulp.parallel('build', 'watch'));
