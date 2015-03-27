angular.module 'Transorder'
.config [
  '$httpProvider'
  ($httpProvider) ->
    $httpProvider.interceptors.push [
      '$q'
      '$location'
      'localStorageService'
      ($q, $location, localStorageService) ->
        returnValue =
          'request': (config) ->
            config.headers = config.headers or {}
            token = localStorageService.get('token')
            config.headers.Authorization = "Bearer #{token}" if token
            return config
          'responseError': (response) ->
            if response.status == 401 or response.status == 403
              console.log('unauth')
            return $q.reject(response)
    ]
]