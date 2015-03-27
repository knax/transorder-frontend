angular.module 'Transorder'
.controller 'ProductListController', [
  '$scope'
  'Product'
  ($scope, Product) ->
    Product.query {}, (product)->
      console.log(product)
]
