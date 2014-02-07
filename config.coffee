exports.config =

  conventions:
    assets: /^client\/assets\//

  files:
    javascripts:
      defaultExtension: 'coffee'
      joinTo:
        'js/app.js': /^client/
        'js/vendor.js': /^(bower_components|vendor)/

    stylesheets:
      joinTo:
        'css/app.css': /^(app|vendor|bower_components)/

    templates:
      joinTo:
        'js/dontUseMe' : /^client/ # dirty hack for Jade compiling.

  modules:
    wrapper: false
    definition: false

  paths:
    public: '_public'
    watched: ['client', 'vendor']

  plugins:
    jade:
      pretty: yes # Adds pretty-indentation whitespaces to output (false by default)
    jade_angular:
      modules_folder: 'templates'
      locals: {}

  server:
    path: 'server/server.coffee'
    port: 3333
    base: '/'
    run:  yes
