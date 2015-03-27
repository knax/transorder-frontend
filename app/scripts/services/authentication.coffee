angular.module 'Transorder'
.factory 'Authentication', [
  '$http'
  'localStorageService'
  'ApiBaseUrl'
  ($http, localStorageService, ApiBaseUrl) ->
    Authentication =
      login: (credentials, success, error) ->
        $http
          .post ApiBaseUrl + 'api/v1/authentication/login',
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
    return Authentication
]
