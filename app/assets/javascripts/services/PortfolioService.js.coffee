angular.module('portfolioApp').factory 'Portfolio', ($resource) ->
  class Portfolio
    constructor: (errorHandler) ->
      @service = $resource('/api/portfolio')
      @errorHandler = errorHandler

    all: ->
      @service.query((-> null), @errorHandler)
