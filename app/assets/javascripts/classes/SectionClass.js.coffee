angular.module('portfolioApp').factory 'Section', () ->
  class Section
    
    @open = 'open'
    @close = 'close'
    
    constructor: (@id) ->
    
    getId: ->
      @id
    
    setId: (@id) ->
