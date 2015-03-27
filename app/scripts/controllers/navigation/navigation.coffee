angular.module 'Transorder'
.controller 'NavigationController', [
  '$scope'
  '$state'
  'App'
  'Navigation'
  ($scope, $state, App, Navigation) ->
    $scope.name = App.name
    $scope.navigation = []



    return
]
