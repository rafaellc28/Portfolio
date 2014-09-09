angular.module('portfolioApp').factory 'TypesCertificate', ($resource) ->
  class TypesCertificate
    constructor: (typeCertId, errorHandler) ->
      @service = $resource('/api/types_certificates/:id', {id: typeCertId})
      @errorHandler = errorHandler
    
    all: ->
      @service.query((-> null), @errorHandler)
    
    find: (id, successHandler) ->
      @service.get(id: id, ((list)-> 
        successHandler?(list)
        list), 
       @errorHandler)
