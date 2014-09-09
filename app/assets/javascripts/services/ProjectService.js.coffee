angular.module('portfolioApp').factory 'Project', ($resource) ->
  class Project
    constructor: (projId, errorHandler) ->
      @service = $resource('/api/projects/:id', {id: projId})
      @errorHandler = errorHandler
    
    all: ->
      @service.query((-> null), @errorHandler)
    
    find: (id, successHandler) ->
      @service.get(id: id, ((list)-> 
        successHandler?(list)
        list), 
       @errorHandler)
