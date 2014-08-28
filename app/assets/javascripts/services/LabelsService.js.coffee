angular.module('portfolioApp').factory 'Labels', ($resource) ->
  class Labels
    constructor: (errorHandler) ->
      @service = $resource('/api/labels')
      @errorHandler = errorHandler

    all: ->
      @service.query((-> null), @errorHandler)
