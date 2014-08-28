angular.module('portfolioApp').factory 'Education', ($resource) ->
  class Education
    constructor: (eduId, errorHandler) ->
      @service = $resource('/api/educations/:id', {id: eduId})
      @errorHandler = errorHandler
	
    all: ->
      @service.query((-> null), @errorHandler)

    find: (id, successHandler) ->
      @service.get(id: id, ((list)-> 
        successHandler?(list)
        list), 
       @errorHandler)
