module.exports = function (grunt) {
    var pkg = grunt.file.readJSON('package.json');
    grunt.initConfig({
        browserify: {
            dist: {
                files: {
                    'js/browserify/app.js': ['js/src/app.js'],
                }
            }

        },

        uglify: {
            build: {
                options: {
                    sourceMap: true,
                },
                files: {
                    'app/assets/javascripts/app.min.js': ['js/browserify/app.js']
                }
            }
        },

        karma: {
            options: {
                configFile: 'karma.conf.js'
            },
            unit: {
                singleRun: true
            },
            continuous: {
                autoWatch: false,
                background: true,
                singleRun: false
            }
        },

        watch: {
            js: {
                files: ['js/src/*.js', 'spec/js/*.js'],
                tasks: ['karma:continuous:run', 'browserify', 'uglify']
            }
        }
    });

    grunt.loadNpmTasks('grunt-contrib-uglify');
    grunt.loadNpmTasks('grunt-contrib-watch');
    grunt.loadNpmTasks('grunt-karma');
    grunt.loadNpmTasks('grunt-browserify');

    grunt.registerTask('default', ['karma:unit', 'browserify', 'uglify']);
    grunt.registerTask('serve', ['karma:continuous:start', 'watch'])
};
