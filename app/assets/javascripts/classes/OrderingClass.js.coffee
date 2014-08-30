angular.module('portfolioApp').factory 'Ordering', () ->
  class Ordering
    
    @up: 'up'
    @down: 'down'
    @none: 'none'
    
    @number = 'num'
    @string = 'string'
    @date = 'date'
    
    constructor: (@id, @parent_id, @sortFields, @currentField, @currentType, @currentReversibility = false) ->
    
    setParentId: (@parent_id) ->
    
    setCurrentField: (@currentField) ->
    
    setCurrentType: (@currentType) ->
    
    setCurrentReversibility: (@currentReversibility) ->
    
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
    
    getCurrentReversibility: ->
      @currentReversibility
    
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
          @setCurrentReversibility(false)
        else
          @sortFields[idx] = "-#{field}"
          @setCurrentField("-#{field}")
          @setCurrentReversibility(true)
      
      @setCurrentType(type)
    
    currentOrderField: ->
      if @currentField[0] == '-'
        @currentField.substr(1)
      else
        @currentField
    
    currentOrderReversibility: ->
      @currentField[0] == '-'
    