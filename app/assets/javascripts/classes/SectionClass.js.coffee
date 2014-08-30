angular.module('portfolioApp').factory 'Section', [ "Ordering", (Ordering) ->
  class Section
    
    @open: 'open'
    @close: 'close'
    
    constructor: (id, initOrder) ->
      @id = id
      @initParentId = initOrder.getParentId()
      @orderController = {}
      @orderController[@initParentId] = initOrder
    
    getId: ->
      @id
    
    setId: (@id) ->
    
    getOrder: (parentId) ->
      @orderController[parentId]
      
    addOrder: (parentId, order) ->
      @orderController[parentId] = order
    
    validateOrder: (parentId) ->
      if not @orderController[parentId]
        @orderController[parentId] = jQuery.extend(true, {}, @orderController[@initParentId])
        @orderController[parentId].setParentId(parentId)
]