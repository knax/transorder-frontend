define [
  'angular'
  'ngResource'
  'ui.bootstrap'
  'ui.router'
  'ct.ui.router.extras'
  'angular-jwt'
  'LocalStorageModule'
  './module/config/index'
  './module/service/index'
  './module/controller/index'
], (angular) ->
  angular.module 'Transorder', [
    'ngResource'
    'ui.bootstrap'
    'ui.router'
    'ct.ui.router.extras'
    'angular-jwt'
    'LocalStorageModule'
    'Transorder.configs'
    'Transorder.services'
    'Transorder.controllers'
  ]