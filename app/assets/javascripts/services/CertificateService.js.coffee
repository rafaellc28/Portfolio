angular.module('portfolioApp').factory 'Certificate', ($resource) ->
  class Certificate
    constructor: (certId, errorHandler) ->
      @service = $resource('/api/certificates/:id', {id: certId})
      @errorHandler = errorHandler

    all: ->
      @service.query((-> null), @errorHandler)
