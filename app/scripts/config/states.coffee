angular.module 'Transorder'
.config [
  '$stateProvider'
  '$urlRouterProvider'
  ($stateProvider, $urlRouterProvider) ->
    $stateProvider.state
      name: 'app'
      abstract: true
      controller: 'MainController'
      templateUrl: 'views/layout/main.html'

    $stateProvider.state
      name: 'app.navigation'
      abstract: true
      sticky: true
      views:
        'navigation':
          controller: 'NavigationController'
          templateUrl: 'views/layout/navigation/main.html'
    $stateProvider.state
      name: 'app.navigation.guest'
      deepStateRedirect: true
      views:
        'navigation-menu':
          templateUrl: 'views/layout/navigation/guest.html'
    $stateProvider.state
      name: 'app.navigation.logged-in'
      deepStateRedirect: true
      views:
        'navigation-menu':
          templateUrl: 'views/layout/navigation/logged-in.html'

    $stateProvider.state
      name: 'app.content'
      abstract: true
      sticky: true
      views:
        'content':
          templateUrl: 'views/layout/content.html'
    $stateProvider.state
      name: 'app.content.authentication'
      abstract: true
      templateUrl: 'views/authentication/main.html'
    $stateProvider.state
      name: 'app.content.authentication.login'
      url: '/authentication/login'
      controller: 'AuthenticationLoginController'
      templateUrl: 'views/authentication/login.html'
    $stateProvider.state
      name: 'app.content.authentication.register'
      url: '/authentication/register'
      templateUrl: 'views/authentication/register.html'

    $stateProvider.state
      name: 'app.content.product'
      url: '/product'
      template: '<p>test</p>'
    $stateProvider.state
      name: 'app.content.order'
      url: '/order'
      template: '<p>test</p>'

    return
]
