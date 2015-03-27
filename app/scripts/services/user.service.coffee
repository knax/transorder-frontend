angular.module 'Transorder'
.factory 'UserService', [
  '$http'
  'localStorageService'
  'ApiValue'
  ($http, localStorageService, ApiValue) ->
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
        user = $http.get ApiValue.path() + '/authentication/user'
        callback user
        return
    return User
]
