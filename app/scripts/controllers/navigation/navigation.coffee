angular.module 'Transorder'
.controller 'NavigationController', [
  '$scope'
  '$state'
  'Navigation'
  ($scope, $state, Navigation) ->
    $scope.name = 'Transorder'
    $scope.navigation = Navigation

    console.log 'test'
    return
]
