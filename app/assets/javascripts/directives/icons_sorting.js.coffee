# Manage sorting icon for a field. The icons are created inside canvas
angular.module('portfolioApp').directive "iconSorting", (Sorting) ->
  ret =
    restrict: "A"
    link: (scope, element) ->
      
      # initially, there is no sorting order for the field represented by this icon
      curStatus = Sorting.none
      elem = element[0]
      
      # get context of the canvas
      ctx = elem.getContext('2d')
      
      # set the icon color
      ctx.fillStyle = elem.dataset.color
      
      # when the icon is clicked
      element.bind 'click', (event) ->
        
        # reset the canvas
        elem.width = elem.width
        
        # get the neighbors of the field represented by this icon
        neighbors = elem.dataset.neighbors
        
        if neighbors
          neighbors = neighbors.split(',')
        else
          neighbors = []
        
        # For each neighbor, reset its canvas and draw a none icon
        # This show the user that the records are not being sorted by these fields
        for id in neighbors
          neighbor = document.getElementById(id)
          neighbor.width = neighbor.width
          ctx_aux = neighbor.getContext('2d')
          ctx_aux.fillStyle = neighbor.dataset.color
          none(ctx_aux)
        
        # set the icon color
        ctx.fillStyle = elem.dataset.color
        
        # if the previous icon was for descending sort or none, 
        # then the current is for ascending sort 
        if curStatus == Sorting.desc or curStatus == Sorting.none
          curStatus = Sorting.asc
          asc(ctx)
        # if the previous icon was for ascending sort, 
        # then the current is for descending sort 
        else
          curStatus = Sorting.desc
          desc(ctx)
      
      #Draw descending order icon
      desc = (ctx_param) ->
        # a tringle pointing up
        ctx_param.beginPath()
        ctx_param.moveTo(8,5)
        ctx_param.lineTo(14,16)
        ctx_param.lineTo(2,16)
        ctx_param.closePath()
        ctx_param.fill()
      
      #Draw ascending order icon
      asc = (ctx_param) ->
        # a triangle pointing down
        ctx_param.beginPath()
        ctx_param.moveTo(2,5)
        ctx_param.lineTo(14,5)
        ctx_param.lineTo(8,16)
        ctx_param.closePath()
        ctx_param.fill()
      
      #Draw no sorting order icon
      none = (ctx_param) ->
        # a circle
        centerX = elem.width / 2
        centerY = 10
        radius = 3
        
        ctx_param.beginPath()
        ctx_param.arc(centerX, centerY, radius, 0, 2 * Math.PI, false)
        ctx_param.closePath()
        ctx_param.fill()
      
      # get current sort order for the field
      curStatus = scope.currentOrderBySection(elem.dataset.type, elem.dataset.parent, elem.dataset.field)
      
      # set the icon according to the current sort order for the field
      if curStatus == Sorting.desc
        desc(ctx)
      else if curStatus == Sorting.asc
        asc(ctx)
      else
        curStatus = Sorting.none
        none(ctx)
