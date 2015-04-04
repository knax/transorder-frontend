angular.module 'Transorder'
.factory 'AuthenticationService', [
  '$http'
  'localStorageService'
  'ApiValue'
  ($http, localStorageService, ApiValue) ->
    Authentication =
      login: (credentials, success, error) ->
        $http
          .post ApiValue + 'api/v1/authentication/login',
            username:credentials.username
            password:credentials.password
          .success (response) ->
            localStorageService.set 'token', response.token
            success(response)
          .error error
      logout: (callback) ->
        localStorageService.remove 'token'
        callback()
      check: (callback) ->
        callback(localStorageService.get 'token')
]
