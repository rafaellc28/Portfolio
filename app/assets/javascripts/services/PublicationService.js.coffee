angular.module('portfolioApp').factory 'Publication', ($resource) ->
  class Publication
    constructor: (pubId, errorHandler) ->
      @service = $resource('/api/publications/:id', {id: pubId})
      @errorHandler = errorHandler

    all: ->
      @service.query((-> null), @errorHandler)
    
    find: (id, successHandler) ->
      @service.get(id: id, ((list)-> 
        successHandler?(list)
        list), 
       @errorHandler)
