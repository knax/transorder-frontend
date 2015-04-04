define ['../module/service/module'], (services) ->
  services.factory 'ProductService', [
    '$resource'
    'ApiValue'
    ($resource, ApiValue) ->
      $resource ApiValue + '/product', {},
        query: {method:'GET', isArray: true}
  ]