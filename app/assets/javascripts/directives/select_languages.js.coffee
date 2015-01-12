angular.module('portfolioApp').directive "selectLanguage", (Section, Sorting) ->
  ret =
    restrict: "A"
    link: (scope, element) ->
      
      elem = element[0]
      
      element.bind 'click', (event) ->
        
        # get all language links
        languages = $("a[data-type='#{elem.dataset.type}']")
        
        # deactivate all language links
        for language in languages
          $("##{language.id}").prop('class', '')
        
        # activate language link clicked
        $("##{elem.id}").prop('class', 'active')
        
        # set current language to the one clicked now
        scope.setCurrentLanguage(elem.id)
        
        scope.$apply()
        
        #icons = $(".icon")
        
        #for icon in icons
        #  icon_canvas = $("##{icon.id}")
        #  icon_canvas.prop('data-color', scope.getIconColor())
        
        #  ctx_aux = icon.getContext('2d')
        #  ctx_aux.fillStyle = icon_canvas.prop('data-color')
        
        #  switch icon.dataset.status
        #    when Section.open then Section.drawOpen(ctx_aux, icon)
        #    when Section.close then Section.drawClose(ctx_aux, icon)
        #    when Sorting.none then Sorting.drawNone(ctx_aux, icon)
        #    when Sorting.asc then Sorting.drawAsc(ctx_aux, icon)
        #    when Sorting.desc then Sorting.drawDesc(ctx_aux, icon)
 