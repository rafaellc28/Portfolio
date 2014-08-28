angular.module('portfolioApp').directive "iconordering", (Ordering) ->
  ret =
    restrict: "A"
    link: (scope, element) ->
      
      curPos = Ordering.none
      elem = element[0]
      ctx = elem.getContext('2d')
      ctx.fillStyle="#2B65EC"
      
      element.bind 'click', (event) ->
        
        elem.width = elem.width
        neighbors = elem.getAttribute('data-neighbors')
        
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
        
        if curPos == Ordering.up or curPos == Ordering.none
          curPos = Ordering.down
          down(ctx)
        else
          curPos = Ordering.up
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
      
      pos = scope.ordPos(elem.getAttribute('data-type'), elem.getAttribute('data-field'), elem.getAttribute('data-parent'))
      
      if pos == Ordering.up
        curPos = Ordering.up
        up(ctx)
      else if pos == Ordering.down
        curPos = Ordering.down
        down(ctx)
      else
        curPos = Ordering.none
        none(ctx)
