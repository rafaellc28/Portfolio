angular.module('portfolioApp').factory 'TypesCertificates', ($resource) ->
  class TypesCertificates
    constructor: (errorHandler) ->
      @service = $resource('/api/types_certificates')
      @errorHandler = errorHandler

    all: ->
      @service.query((-> null), @errorHandler)
