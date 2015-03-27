angular.module 'Transorder'
.run [
  '$state'
  ($state) ->
    console.log 'test'
    $state.go 'app.navigation.guest'
]