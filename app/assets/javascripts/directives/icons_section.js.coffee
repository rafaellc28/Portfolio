# Manage open/close icons for a section
angular.module('portfolioApp').directive "iconSection", (Section) ->
  ret =
    restrict: "A"
    link: (scope, element) ->
      
      elem = element[0]
      
      # get context of the canvas
      ctx = elem.getContext('2d')
      
      # set the icon color
      ctx.fillStyle = '#2B65EC'#scope.getIconColor()
      
      # when the icon is clicked
      element.bind 'click', (event) ->
        
        # reset the canvas
        elem.width = elem.width
        
        #get the neighbors of the section represented by this icon
        neighbors_id = elem.dataset.neighbors
        neighbors = $("canvas[id^='#{neighbors_id}']")
        
        # For each neighbor, reset its canvas and draw a open icon 
        # (what means that each are now a closed section and must be opened if the user want to see it)
        # This show the user that the only open section is the one he just clicked
        for neighbor in neighbors
          
          if neighbor.id != elem.id
            neighbor.width = neighbor.width
            neighbor.dataset.status = Section.open
            ctx_aux = neighbor.getContext('2d')
            ctx_aux.fillStyle = neighbor.dataset.color
            Section.drawOpen(ctx_aux, neighbor)
        
        # set the icon color
        ctx.fillStyle = elem.dataset.color
        
        # if the previous status of this section was open, now it must be closed
        if elem.dataset.status == Section.open
          elem.dataset.status = Section.close
          Section.drawClose(ctx, elem)
        # if the previous status of this section was close, now it must be opened
        else
          elem.dataset.status = Section.open
          Section.drawOpen(ctx, elem)
      
      # set the icon according to the current status
      if elem.dataset.status == Section.close
        Section.drawClose(ctx, elem)
      else 
        elem.dataset.status = Section.open
        Section.drawOpen(ctx, elem)
