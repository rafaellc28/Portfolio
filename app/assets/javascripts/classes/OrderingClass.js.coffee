angular.module('portfolioApp').factory 'Ordering', () ->
  class Ordering
    
    @up: 'up'
    @down: 'down'
    @none: 'none'
    
    @number = 'num'
    @string = 'string'
    @date = 'date'
    
    constructor: (@parentId, @sortFields, @currentField, @currentType) ->
    
    setParentId: (@parentId) ->
    
    setCurrentField: (@currentField) ->
    
    setCurrentType: (@currentType) ->
    
    setFields: (@sortFields) ->
    
    getParentId: ->
      @parentId
    
    getFields: ->
      @sortFields
    
    getCurrentField: ->
      @currentField
    
    getCurrentType: ->
      @currentType
    
    checkOrderByField: (field) ->
      if @currentField == field
        Ordering.down
      else if @currentField == "-#{field}"
        Ordering.up
      else
        Ordering.none
    
    updateOrder: (field, type) ->
      idx = @sortFields.indexOf(field)
      
      if idx == -1
        idx = @sortFields.indexOf("-#{field}")
      
      if idx == -1
        @sortFields.push(field)
        @setCurrentField(field)
      else
        if @sortFields[idx][0] == '-'
          @sortFields[idx] = field
          @setCurrentField(field)
        else
          @sortFields[idx] = "-#{field}"
          @setCurrentField("-#{field}")
      
      @setCurrentType(type)
    
    currentOrderField: ->
      if @currentField[0] == '-'
        @currentField.substr(1)
      else
        @currentField
    
    currentOrderReversibility: ->
      @currentField[0] == '-'
    