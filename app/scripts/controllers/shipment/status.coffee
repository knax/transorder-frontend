define ['../../module/controller/module'], (controllers) ->
  controllers.controller 'ShipmentSelectController', [
    '$scope'
    ($scope) ->
      $scope.orders = [
        {
          id: 1
          receiver_name: 'Astuti'
          receiver_address: 'Bekasi'
          information: 'lorem'
          total_price: '18000'
          delivery_service: 'JNE'
          status: 'delivered'
          orders: [
            {
              id: 1
              code: 23132
              name: 'Baju 1'
              description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias eveniet excepturi facere, illo ipsa maiores minima modi numquam rem repellendus sit sunt veritatis voluptatum! At delectus error minus quam soluta!'
              price: 70000
              stock: 5
              photoUrl: 'https://builder.divshot.com/img/placeholder-64x64.gif'
            }
            {
              id: 2
              code: 23113
              name: 'Baju 2'
              description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias eveniet excepturi facere, illo ipsa maiores minima modi numquam rem repellendus sit sunt veritatis voluptatum! At delectus error minus quam soluta!'
              price: 30000
              stock: 9
              photoUrl: 'https://builder.divshot.com/img/placeholder-64x64.gif'
            }
          ]
        }
      ]

  ]
