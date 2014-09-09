angular.module('portfolioApp').factory 'User', ($resource) ->
  class User
    constructor: (userId, errorHandler) ->
      @service = $resource('/api/users/:id', {id: userId})
      @errorHandler = errorHandler
    
    all: ->
      @service.query((-> null), @errorHandler)
    
    find: (id, successHandler) ->
      @service.get(id: id, ((list)-> 
        successHandler?(list)
        list), 
       @errorHandler)
