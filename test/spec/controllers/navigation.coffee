'use strict'

describe 'Controller: NavigationController', ->

  # load the 's module
  beforeEach module 'transorder'

  NavigationController = {}
  scope = {}

  # Initialize the  and a mock scope
  beforeEach inject ($, $rootScope) ->
    scope = $rootScope.$new()
    NavigationController = $ 'NavigationController', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(scope.awesomeThings.length).toBe 3
