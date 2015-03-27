angular.module 'Transorder'
.controller 'MainController', [
  '$scope'
  '$state'
  ($scope, $state) ->
    $scope.name = 'Transorder'
    console.log 'test'
    return
]
