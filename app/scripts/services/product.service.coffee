angular.module 'Transorder'
.factory 'ProductService', [
  '$resource'
  'ApiValue'
  ($resource, ApiValue) ->
    $resource ApiValue + '/product', {},
      query: {method:'GET', isArray: true}
]