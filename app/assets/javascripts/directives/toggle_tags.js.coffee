angular.module('portfolioApp').directive "toggleTags", (Sorting) ->
  ret =
    restrict: "A"
    link: (scope, element) ->
      
      elem = element[0]
      
      element.bind 'click', (event) ->
        event.preventDefault();
        scope.tagsShown = !scope.tagsShown
        scope.$apply()
