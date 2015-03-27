angular.module 'Transorder'
.controller 'LoginController', [
  'Authentication'
  'User'
  'jwtHelper'
  '$scope'
  (Authentication, jwtHelper, $scope) ->
    console.log 'controller called'
#    Authentication.login {
#      username: 'arlie36'
#      password: 'standar'
#    }, ((response) ->
#    ),((response) ->3
#      console.log response
#    )
]
