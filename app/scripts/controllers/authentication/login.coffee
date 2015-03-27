angular.module 'Transorder'
.controller 'LoginController', [
  'Authentication'
  'jwtHelper'
  '$scope'
  (Authentication, jwtHelper, $scope) ->
    Authentication.login {
      username: 'arlie36'
      password: 'standar'
    }, ((response) ->
      jwtToken = jwtHelper.decodeToken response.token
      console.log jwtToken
    ),((response) ->
      console.log response
    )
]
