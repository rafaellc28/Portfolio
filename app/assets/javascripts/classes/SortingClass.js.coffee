# Manage the sorting for fields of a section
angular.module('portfolioApp').factory 'Sorting', () ->
  class Sorting
    
    # sort orders
    @asc: 'asc'
    @desc: 'desc'
    @none: 'none'
    
    # value types for the items to be sorted
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
    
    # check the sort order for a specific field
    checkOrderByField: (field) ->
      if @currentField == field
        Sorting.asc
      # a minus (-) before the name of a field means that the field is sorted in descending order
      else if @currentField == "-#{field}"
        Sorting.desc
      else
        Sorting.none
    
    # update the sort order and set the current field and type for the sorting of a section
    updateOrder: (field, type) ->
      idx = @sortFields.indexOf(field)
      
      if idx == -1
        idx = @sortFields.indexOf("-#{field}")
      
      # if there is no previous sorting with the field parameter
      if idx == -1
        @sortFields.push(field)
        @setCurrentField(field)
      else
        # if the previous order for the field was descending
        # then the current one are going to be ascending
        # extract the minus (-) before the field name
        if @sortFields[idx][0] == '-'
          @sortFields[idx] = field
          @setCurrentField(field)
        # if the previous order for the field was ascending
        # then the current one are going to be descending
        else
          @sortFields[idx] = "-#{field}"
          @setCurrentField("-#{field}")
      
      # set the current type
      @setCurrentType(type)
    
    # get the current field
    # extract the minus (-) if the current order is descending
    currentOrderField: ->
      if @currentField[0] == '-'
        @currentField.substr(1)
      else
        @currentField
    
    # get the current order:
    # ascending if there is a minus before the name of the current field
    currentOrderReversibility: ->
      @currentField[0] == '-'
    