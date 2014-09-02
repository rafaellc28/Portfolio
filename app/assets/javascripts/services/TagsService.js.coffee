angular.module('portfolioApp').factory 'Tags', ($resource) ->
  class Tags
    constructor: (errorHandler) ->
      @service = $resource('/api/tags')
      @errorHandler = errorHandler
    
    all: ->
      @service.query((-> null), @errorHandler)
