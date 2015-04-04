define ['../module/service/module'], (services) ->
  services.factory 'UserService', [
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
          )
        setUser: (callback) ->
          user = $http.get ApiValue.path() + '/authentication/user'
          callback user
  ]
