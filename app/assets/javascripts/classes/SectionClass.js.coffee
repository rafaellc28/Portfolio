# Manage the action of open/close a section and 
# the sorting of the section and its subsections
angular.module('portfolioApp').factory 'Section', [ "Sorting", (Sorting) ->
  class Section
    
    # open / close status
    @open: 'open'
    @close: 'close'
    
    # initOrder is a Sorting instance
    constructor: (id, initOrder) ->
      @id = id
      @initParentId = initOrder.getParentId()
      @orderController = {}
      @orderController[@initParentId] = initOrder
    
    getId: ->
      @id
    
    setId: (@id) ->
    
    # get the sort order for a subsection with specific parent
    getOrder: (parentId) ->
      @orderController[parentId]
    
    # add the order controller for a subsection with specific parent
    # order is a Sorting instance
    addOrder: (parentId, order) ->
      @orderController[parentId] = order
    
    # check if there is a order controller for the subsection with the given parent
    # if not, create one
    validateOrder: (parentId) ->
      if not @orderController[parentId]
        @orderController[parentId] = jQuery.extend(true, {}, @orderController[@initParentId])
        @orderController[parentId].setParentId(parentId)
]