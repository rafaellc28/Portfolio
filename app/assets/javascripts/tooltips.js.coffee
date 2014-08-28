angular.module('portfolioApp').directive 'NewTooltip', () ->
  tooltip_aux2 =
    restrict: 'A'
    link: (scope, element, attrs) -> 
      $(element).hover ->
        $(element).css("background","#E3E4FA")
        #$(element).tooltip('show')
        #$(element).popover({placement: 'top', trigger: 'click focus', html:true})
        #$(element).popover('toggle')
      , ->
        $(element).css("background","")
        #$(element).tooltip('hide')
        #$(element).popover('hide')

