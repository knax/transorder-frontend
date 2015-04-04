require.config
  paths:
    'domReady': '../../../bower_components/requirejs-domready/domReady'
    'angular': '../../../bower_components/angular/angular'
    'ngResource': '../../../bower_components/angular-resource/angular-resource'
    'ui.bootstrap': '../../../bower_components/angular-bootstrap/ui-bootstrap'
    'ui.bootstrap-tpl': '../../../bower_components/angular-bootstrap/ui-bootstrap-tpls'
    'ui.router': '../../../bower_components/angular-ui-router/release/angular-ui-router'
    'ct.ui.router.extras': '../../../bower_components/ui-router-extras/release/ct-ui-router-extras'
    'angular-jwt': '../../../bower_components/angular-jwt/dist/angular-jwt'
    'LocalStorageModule': '../../../bower_components/angular-local-storage/dist/angular-local-storage'
  shim:
    'angular':
      exports: 'angular'
    'ngResource':
      exports: 'angular'
      deps: ['angular']
    'ui.bootstrap':
      exports: 'angular'
      deps: ['angular']
    'ui.bootstrap-tpl':
      exports: 'angular'
      deps: ['ui.bootstrap']
    'ui.router':
      deps: ['angular']
    'ct.ui.router.extras':
      deps: ['ui.router']
    'angular-jwt':
      deps: ['angular']
    'LocalStorageModule':
      deps: ['angular']

  deps: ['./bootstrap']