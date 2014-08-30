angular.module('portfolioApp').directive "iconSorting", (Ordering) ->
  ret =
    restrict: "A"
    link: (scope, element) ->
      
      curStatus = Ordering.none
      elem = element[0]
      ctx = elem.getContext('2d')
      ctx.fillStyle="#2B65EC"
      
      element.bind 'click', (event) ->
        
        elem.width = elem.width
        neighbors = elem.dataset.neighbors
        
        if neighbors
          neighbors = neighbors.split(',')
        else
          neighbors = []
        
        for id in neighbors
          neighbor = document.getElementById(id)
          neighbor.width = neighbor.width
          ctx_aux = neighbor.getContext('2d')
          ctx_aux.fillStyle="#2B65EC"
          none(ctx_aux)
        
        ctx.fillStyle="#2B65EC"
        
        if curStatus == Ordering.up or curStatus == Ordering.none
          curStatus = Ordering.down
          down(ctx)
        else
          curStatus = Ordering.up
          up(ctx)
      
      #Draw up triangle
      up = (ctx_param) ->
        ctx_param.beginPath()
        ctx_param.moveTo(8,5)
        ctx_param.lineTo(14,16)
        ctx_param.lineTo(2,16)
        ctx_param.closePath()
        ctx_param.fill()
      
      #Draw down triangle
      down = (ctx_param) ->
        ctx_param.beginPath()
        ctx_param.moveTo(2,5)
        ctx_param.lineTo(14,5)
        ctx_param.lineTo(8,16)
        ctx_param.closePath()
        ctx_param.fill()
      
      #Draw none
      none = (ctx_param) ->
        ctx_param.fillRect(3,9,10,3)
      
      curStatus = scope.ordPos(elem.dataset.type, elem.dataset.field, elem.dataset.parent)
      
      if curStatus == Ordering.up
        up(ctx)
      else if curStatus == Ordering.down
        down(ctx)
      else
        curStatus = Ordering.none
        none(ctx)
