angular.module 'Transorder'
.config [
  '$stateProvider'
  '$urlRouterProvider'
  ($stateProvider, $urlRouterProvider) ->
    $stateProvider.state
      name: 'app'
      views:
        '@':
          templateUrl: 'views/layout/main.html'
    $stateProvider.state
      name: 'app.navigation'
      deepStateRedirect: true
      sticky: true
      views:
        'navigation':
          templateUrl: 'views/layout/navigation/main.html'
    $stateProvider.state
      name: 'app.navigation.guest'
      deepStateRedirect: true
      sticky: true
      views:
        'navigation-menu':
          templateUrl: 'views/layout/navigation/guest.html'
    $stateProvider.state
      name: 'app.navigation.logged-in'
      deepStateRedirect: true
      sticky: true
      views:
        'navigation-menu':
          templateUrl: 'views/layout/navigation/logged-in.html'
    $stateProvider.state
      name: 'app.product'
      views:
        'content':
          template: '<p>test</p>'
    $stateProvider.state
      name: 'app.order'
      views:
        'content':
          template: '<p>test</p>'
    #    $stateProvider.state 'root',
    #      views:
    #        'root@':
    #          templateUrl: 'views/layout/main.html'
    #    $stateProvider.state 'root.navigation',
    #      views:
    #        "navigation":
    #          templateUrl: 'views/layout/navigation/main.html'
    #      views:
    #        '':
    #          templateUrl: 'views/layout/main.html'
    #        'navigation@root':
    #          controller: 'NavigationController'
    #          templateUrl: 'views/layout/navigation/main.html'
    #        'content@root':
    #          controller: 'ContentController'
    #          templateUrl: 'views/layout/content/content.html'
    #    $stateProvider.state 'navigation-guest',
    #      url: ''
    #      views:
    #        'content@root':
    #          controller: 'NavigationGuestController'
    #          templateUrl: 'views/layout/navigation/guest.html'
    #    $stateProvider.state 'navigation-logged-in',
    #      views:
    #        'navigation-menu':
    #          controller: 'NavigationLoggedInController'
    #          template: 'views/layout/navigation/logged-in.html'


    #    $stateProvider
    #      .state('root'
    #        abstract: true
    #        url: '/'
    #        controller: 'MainController'
    #        views:
    #          'root':
    #            template: 'views/main.html'
    #      )
    #
    #    $stateProvider
    #      .state('navigation.main'
    #        parent: 'root'
    #        url: ''
    #        views:
    #          'navigation':
    #            template: 'views/navigation/main.html'
    #      )
    return
]
