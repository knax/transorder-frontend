angular.module 'Transorder'
.factory 'Product', [
  '$resource'
  'ApiBaseUrl'
  ($resource, ApiBaseUrl) ->
    $resource ApiBaseUrl + 'api/v1/product', {},
      query: {method:'GET', isArray: true}
]