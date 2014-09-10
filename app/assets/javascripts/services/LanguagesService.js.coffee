angular.module('portfolioApp').factory 'Languages', ($resource) ->
  class Languages
    
    @current: {}
    
    constructor: (errorHandler) ->
      @service = $resource('/api/languages')
      @errorHandler = errorHandler
    
    all: ->
      @service.query((-> null), @errorHandler)
    
    @setLanguages: (current) ->
      @current.languages = current
      @current.language = current[0].acronym
    
    @getCurrent: () ->
      @current.languages
    
    @setCurrentLanguage: (language) ->
      @current.language = language
    
    @getCurrentLanguage: ->
      @current.language
      