angular.module('portfolioApp').factory 'TypesCertificates', ($resource) ->
  class TypesCertificates
    constructor: (errorHandler) ->
      @service = $resource('/api/types_certificates')
      @errorHandler = errorHandler

    all: ->
      @service.query((-> null), @errorHandler)
    
    find: (id, successHandler) ->
      @service.get(id: id, ((list)-> 
        successHandler?(list)
        list), 
       @errorHandler)
