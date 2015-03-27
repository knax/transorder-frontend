angular.module 'Transorder'
.controller 'MainController', [
  '$scope'
  '$state'
  ($scope, $state) ->
    $state.go 'app.navigation.guest'
    return
]
