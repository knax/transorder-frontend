angular.module 'Transorder'
.controller 'ProductDetailController', [
  '$scope'
  ($scope) ->
    $scope.product =
      id: 1
      code: 23132
      name: 'Baju 1'
      description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias eveniet excepturi facere, illo ipsa maiores minima modi numquam rem repellendus sit sunt veritatis voluptatum! At delectus error minus quam soluta!'
      price: 70000
      stock: 5
      photoUrl: 'https://builder.divshot.com/img/placeholder-64x64.gif'
      color: [
        {
          id: 3
          name: 'Merah'
          quantity: 4
        }
        {
          id: 2
          name: 'Biru'
          quantity: 3
        }
      ]

]
