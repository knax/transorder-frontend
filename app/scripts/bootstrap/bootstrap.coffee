define [
    'require'
    'angular'
    '../app'
    '../config/states'
], (require, angular) ->
    require [ 'domReady!' ], (document) ->
        angular.bootstrap document, [ 'Transorder' ]
        return
    return
