angular.module 'Transorder'
.controller 'NavigationController', [
  '$scope'
  '$state'
  'AppValue'
  'NavigationValue'
  ($scope, $state, AppValue, NavigationValue) ->
    $scope.isCollapsed = true
    $scope.name = AppValue.name
    $scope.navigation =
      main: NavigationValue.loggedin.user
      right: NavigationValue.loggedin.right
    $scope.$on '$stateChangeSuccess', () ->
      $scope.isCollapsed = true

]
