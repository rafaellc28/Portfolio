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
      ctx.fillStyle = scope.getIconColor()#'#2B65EC'
      
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
          Sorting.drawNone(ctx_aux, neighbor)
          neighbor.dataset.status = Sorting.none
        
        # set the icon color
        ctx.fillStyle = scope.getIconColor()
        
        # if the previous icon was for descending sort or none, 
        # then the current is for ascending sort 
        if curStatus == Sorting.desc or curStatus == Sorting.none
          curStatus = Sorting.asc
          Sorting.drawAsc(ctx, elem)
          elem.dataset.status = Sorting.asc
        # if the previous icon was for ascending sort, 
        # then the current is for descending sort 
        else
          curStatus = Sorting.desc
          Sorting.drawDesc(ctx, elem)
          elem.dataset.status = Sorting.desc
      
      # get current sort order for the field
      curStatus = scope.currentOrderBySection(elem.dataset.type, elem.dataset.parent, elem.dataset.field)
      
      # set the icon according to the current sort order for the field
      if curStatus == Sorting.desc
        Sorting.drawDesc(ctx, elem)
        elem.dataset.status = Sorting.desc
      else if curStatus == Sorting.asc
        Sorting.drawAsc(ctx, elem)
        elem.dataset.status = Sorting.asc
      else
        curStatus = Sorting.none
        Sorting.drawNone(ctx, elem)
        elem.dataset.status = Sorting.none
