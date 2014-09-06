angular.module('portfolioApp').factory 'Languages', ($resource) ->
  class Languages
    
    @current: {}
    
    constructor: (errorHandler) ->
      @service = $resource('/api/languages')
      @errorHandler = errorHandler
    
    all: ->
      @service.query((-> null), @errorHandler)
    
    @setCurrentLanguage: (language) ->
      @current.language = language
    
    @getCurrentLanguage: ->
      @current
      