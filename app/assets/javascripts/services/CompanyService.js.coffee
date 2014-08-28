angular.module('portfolioApp').factory 'Company', ($resource) ->
  class Company
    constructor: (compId, errorHandler) ->
      @service = $resource('/api/companies/:id', {id: compId})
      @errorHandler = errorHandler

    all: ->
      @service.query((-> null), @errorHandler)
