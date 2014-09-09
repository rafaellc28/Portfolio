angular.module('portfolioApp').factory 'Labels', ($resource) ->
  class Labels
    
    @labels: {}
    
    constructor: (errorHandler) ->
      @service = $resource('/api/labels')
      @errorHandler = errorHandler

    all: ->
      @service.query((-> null), @errorHandler)
    
    @setLabels: (current) ->
      @labels = current
    
    @getCurrent: () ->
      @labels
    