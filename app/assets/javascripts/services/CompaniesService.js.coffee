angular.module('portfolioApp').factory 'Companies', ($resource) ->
  class Companies
    constructor: (errorHandler) ->
      @service = $resource('/api/companies')
      @errorHandler = errorHandler

    all: ->
      @service.query((-> null), @errorHandler)
