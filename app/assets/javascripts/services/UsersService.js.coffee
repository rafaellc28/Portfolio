angular.module('portfolioApp').factory 'Users', ($resource) ->
  class Users
    constructor: (errorHandler) ->
      @service = $resource('/api/users')
      @errorHandler = errorHandler
    
    all: ->
      @service.query((-> null), @errorHandler)
