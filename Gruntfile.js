module.exports = function (grunt) {
    var pkg = grunt.file.readJSON('package.json');
    grunt.initConfig({
        concat: {
            files: {
                src: 'js/src/*.js',
                dest: 'js/concat/app.js'
            }
        },

        uglify: {
            build: {
                options: {
                    sourceMap: true,
                    sourceMapName : 'app/assets/javascripts/app.map'
                },
                src: 'js/concat/app.js',
                dest: 'app/assets/javascripts/app.min.js'
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
                tasks: ['concat', 'karma:continuous:run', 'uglify']
            }
        }
    });

    grunt.loadNpmTasks('grunt-contrib-uglify');
    grunt.loadNpmTasks('grunt-contrib-concat');
    grunt.loadNpmTasks('grunt-contrib-watch');
    grunt.loadNpmTasks('grunt-karma');

    grunt.registerTask('default', ['concat', 'karma:unit', 'uglify']);
    grunt.registerTask('serve', ['karma:continuous:start', 'watch'])
};
