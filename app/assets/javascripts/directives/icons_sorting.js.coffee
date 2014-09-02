angular.module('portfolioApp').directive "iconSorting", (Sorting) ->
  ret =
    restrict: "A"
    link: (scope, element) ->
      
      curStatus = Sorting.none
      elem = element[0]
      ctx = elem.getContext('2d')
      ctx.fillStyle = elem.dataset.color
      
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
          ctx_aux.fillStyle = neighbor.dataset.color
          none(ctx_aux)
        
        ctx.fillStyle = elem.dataset.color
        
        if curStatus == Sorting.desc or curStatus == Sorting.none
          curStatus = Sorting.asc
          asc(ctx)
        else
          curStatus = Sorting.desc
          desc(ctx)
      
      #Draw up triangle
      desc = (ctx_param) ->
        ctx_param.beginPath()
        ctx_param.moveTo(8,5)
        ctx_param.lineTo(14,16)
        ctx_param.lineTo(2,16)
        ctx_param.closePath()
        ctx_param.fill()
      
      #Draw down triangle
      asc = (ctx_param) ->
        ctx_param.beginPath()
        ctx_param.moveTo(2,5)
        ctx_param.lineTo(14,5)
        ctx_param.lineTo(8,16)
        ctx_param.closePath()
        ctx_param.fill()
      
      #Draw none
      none = (ctx_param) ->
        #ctx_param.fillRect(3,9,10,3)
        centerX = elem.width / 2
        centerY = 10
        radius = 3
        
        ctx_param.beginPath()
        ctx_param.arc(centerX, centerY, radius, 0, 2 * Math.PI, false)
        ctx_param.closePath()
        ctx_param.fill()
            
      curStatus = scope.currentOrderBySection(elem.dataset.type, elem.dataset.parent, elem.dataset.field)
      
      if curStatus == Sorting.desc
        desc(ctx)
      else if curStatus == Sorting.asc
        asc(ctx)
      else
        curStatus = Sorting.none
        none(ctx)
