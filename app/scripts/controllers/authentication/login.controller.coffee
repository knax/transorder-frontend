angular.module 'Transorder'
.controller 'AuthenticationLoginController', [
  'AuthenticationService'
  'UserService'
  'jwtHelper'
  '$scope'
  (AuthenticationService, jwtHelper, $scope) ->
#    Authentication.login {
#      username: 'arlie36'
#      password: 'standar'
#    }, ((response) ->
#    ),((response) ->3
#      console.log response
#    )
]
