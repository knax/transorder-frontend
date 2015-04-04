angular.module 'Transorder'
.config [
  '$stateProvider'
  '$urlRouterProvider'
  ($stateProvider, $urlRouterProvider) ->
    $urlRouterProvider.otherwise('/')

    $stateProvider.state
      name: 'app'
      abstract: true
      controller: 'MainController'
      templateUrl: 'views/layout/main.html'

    $stateProvider.state
      name: 'app.navigation'
      sticky: true
      views:
        'navigation':
          controller: 'NavigationController'
          templateUrl: 'views/layout/navigation.html'

    $stateProvider.state
      name: 'app.content'
      abstract: true
      sticky: true
      views:
        'content':
          templateUrl: 'views/layout/content.html'
    $stateProvider.state
      name: 'app.content.default'
      url: '/'
      templateUrl: 'views/default.html'

    $stateProvider.state
      name: 'app.content.authentication'
      abstract: true
      url: '/authentication'
      templateUrl: 'views/layout/empty.html'
    $stateProvider.state
      name: 'app.content.authentication.login'
      url: '/login'
      controller: 'AuthenticationLoginController'
      templateUrl: 'views/authentication/login.html'
    $stateProvider.state
      name: 'app.content.authentication.register'
      url: '/register'
      controller: 'AuthenticationRegisterController'
      templateUrl: 'views/authentication/register.html'

    $stateProvider.state
      name: 'app.content.product'
      abstract: true
      url: '/product'
      templateUrl: 'views/layout/empty.html'
    $stateProvider.state
      name: 'app.content.product.list'
      url: ''
      controller: 'ProductListController'
      templateUrl: 'views/product/list.html'
    $stateProvider.state
      name: 'app.content.product.detail'
      url: '/{id:int}'
      controller: 'ProductDetailController'
      templateUrl: 'views/product/detail.html'

    $stateProvider.state
      name: 'app.content.shipment'
      abstract: true
      url: '/shipment'
      templateUrl: 'views/layout/empty.html'
    $stateProvider.state
      name: 'app.content.shipment.select'
      url: ''
      controller: 'ShipmentSelectController'
      templateUrl: 'views/shipment/select.html'
    $stateProvider.state
      name: 'app.content.shipment.status'
      url: '/status'
      templateUrl: 'views/shipment/status.html'

    $stateProvider.state
      name: 'app.content.payment'
      abstract: true
      url: '/payment'
      templateUrl: 'views/layout/empty.html'
    $stateProvider.state
      name: 'app.content.payment.form'
      url: ''
      controller: 'PaymentFormController'
      templateUrl: 'views/payment/form.html'
    $stateProvider.state
      name: 'app.content.payment.status'
      url: '/status'
      templateUrl: 'views/payment/status.html'

    $stateProvider.state
      name: 'app.content.contact'
      abstract: true
      url: '/contact'
      templateUrl: 'views/layout/empty.html'
    $stateProvider.state
      name: 'app.content.contact.list'
      url: ''
      templateUrl: 'views/contact/list.html'

    $stateProvider.state
      name: 'app.content.notification'
      abstract: true
      url: '/notification'
      templateUrl: 'views/layout/empty.html'
    $stateProvider.state
      name: 'app.content.notification.list'
      url: ''
      templateUrl: 'views/notification/list.html'

    $stateProvider.state
      name: 'app.content.setting'
      abstract: true
      url: '/setting'
      templateUrl: 'views/layout/empty.html'
    $stateProvider.state
      name: 'app.content.setting.form'
      url: ''
      templateUrl: 'views/setting/form.html'

    return
]
