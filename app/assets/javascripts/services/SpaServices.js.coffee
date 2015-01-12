angular.module('portfolioApp').factory 'Spa', ($resource) ->
  class Spa
    constructor: (errorHandler) ->
      @service = $resource('/api/spa')
      @errorHandler = errorHandler
    
    all: ($scope) ->
      @service.query(( -> $scope.successHandler()), @errorHandler)
