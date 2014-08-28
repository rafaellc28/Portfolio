angular.module('portfolioApp').factory 'Ordering', () ->
  class Ordering
    
    @up: 'up'
    @down: 'down'
    @none: 'none'
    
    @number = 'num'
    @string = 'string'
    @date = 'date'
    
    constructor: (@id, @parent_id, @sortFields, @currentField, @currentType) ->
    
    setParentId: (@parent_id) ->
    
    setCurrentField: (@currentField) ->
    
    setCurrentType: (@currentType) ->
    
    setFields: (@sortFields) ->
    
    getId: ->
      @id
    
    getParentId: ->
      @parent_id
    
    getFields: ->
      @sortFields
    
    getCurrentField: ->
      @currentField
    
    getCurrentType: ->
      @currentType
