angular.module('portfolioApp').directive "iconSection", (Section) ->
  ret =
    restrict: "A"
    link: (scope, element) ->
      
      elem = element[0]
      ctx = elem.getContext('2d')
      ctx.fillStyle="#2B65EC"
      
      element.bind 'click', (event) ->
        
        elem.width = elem.width
        neighbors_id = elem.dataset.neighbors
        neighbors = $("canvas[id^='#{neighbors_id}']")
        
        for neighbor in neighbors
          
          if neighbor.id != elem.id
            neighbor.width = neighbor.width
            neighbor.dataset.status = Section.open
            ctx_aux = neighbor.getContext('2d')
            ctx_aux.fillStyle="#2B65EC"
            open(ctx_aux)
        
        ctx.fillStyle="#2B65EC"
        
        if elem.dataset.status == Section.open
          elem.dataset.status = Section.close
          close(ctx)
        else
          elem.dataset.status = Section.open
          open(ctx)
      
      #Draw open
      open = (ctx_param) ->
        ctx_param.fillRect(3,9,11,3)
        ctx_param.fillRect(7,5,3,11)
      
      #Draw close
      close = (ctx_param) ->
        ctx_param.fillRect(3,9,10,3)
      
      if elem.dataset.status == Section.close
        close(ctx)
      else 
        elem.dataset.status = Section.open
        open(ctx)
