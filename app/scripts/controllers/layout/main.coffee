define ['../../module/controller/module'], (controllers) ->
  controllers.controller 'MainController', [
    '$scope'
    '$state'
    ($scope, $state) ->
      $state.go 'app.navigation'
  ]

