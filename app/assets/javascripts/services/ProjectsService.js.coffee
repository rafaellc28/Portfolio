angular.module('portfolioApp').factory 'Projects', ($resource) ->
  class Projects
    constructor: (errorHandler) ->
      @service = $resource('/api/projects')
      @errorHandler = errorHandler
    
    all: ->
      @service.query((-> null), @errorHandler)
