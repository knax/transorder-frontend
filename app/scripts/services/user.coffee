angular.module 'Transorder'
.factory 'User', [
  '$http'
  'localStorageService'
  'ApiBaseUrl'
  ($http, localStorageService, ApiBaseUrl) ->
    User =
      user: {}
      type: (callback) ->
        if this.user
          callback this.user
          return
        this.setUser((user) ->
          this.user = user
          callback this.user
          return
        )
      setUser: (callback) ->
        user = $http.get ApiBaseUrl + 'api/v1/authentication/user'
        callback user
        return
    return User
]
