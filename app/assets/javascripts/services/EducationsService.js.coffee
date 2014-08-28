angular.module('portfolioApp').factory 'Educations', ($resource) ->
  class Educations
    constructor: (errorHandler) ->
      @service = $resource('/api/educations')
      @errorHandler = errorHandler

    all: ->
      @service.query((-> null), @errorHandler)
