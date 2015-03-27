angular.module 'Transorder'
.controller 'ContentController', [
  '$scope'
  '$state'
  ($scope, $state) ->
    $scope.name = 'Transorder'
    $scope.guest = () ->
      console.log 'test'
      $scope.name = 'test'
      $state.go('navigation-guest')
      return
    console.log 'test'
    return
]
