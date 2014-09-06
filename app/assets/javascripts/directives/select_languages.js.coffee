angular.module('portfolioApp').directive "selectLanguage", () ->
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
        
