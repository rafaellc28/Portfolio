angular.module('portfolioApp').factory 'Certificates', ($resource) ->
  class Certificates
    constructor: (errorHandler) ->
      @service = $resource('/api/certificates')
      @errorHandler = errorHandler

    all: ->
      @service.query((-> null), @errorHandler)
