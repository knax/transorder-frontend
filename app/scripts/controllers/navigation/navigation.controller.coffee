angular.module 'Transorder'
.controller 'NavigationController', [
  '$scope'
  '$state'
  'AppValue'
  'NavigationValue'
  ($scope, $state, AppValue, NavigationValue) ->
    $scope.name = AppValue.name
    $scope.navigation = []



    return
]
