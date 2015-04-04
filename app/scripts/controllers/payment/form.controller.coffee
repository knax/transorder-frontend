angular.module 'Transorder'
.controller 'PaymentFormController', [
  '$scope'
  ($scope) ->
    $scope.banks = [
      {
        id: 1
        name: 'BCA'
        account_name: 'Astuti'
        account_number: 231231231323
      }
      {
        id: 2
        name: 'BNI'
        account_name: 'Astuti'
        account_number: 412412123132
      }
    ]
]
