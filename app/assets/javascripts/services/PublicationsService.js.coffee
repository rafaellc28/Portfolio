angular.module('portfolioApp').factory 'Publications', ($resource) ->
  class Publications
    constructor: (errorHandler) ->
      @service = $resource('/api/publications')
      @errorHandler = errorHandler

    all: ->
      @service.query((-> null), @errorHandler)
