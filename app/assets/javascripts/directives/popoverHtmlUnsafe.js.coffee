#http://stackoverflow.com/questions/16722424/how-do-i-create-an-angularjs-ui-bootstrap-popover-with-html-content

# directives to show ui.bootstrap popover with html content
angular.module("portfolioApp").directive "popoverHtmlUnsafePopup", () ->
  ret = 
    restrict: "A"
    replace: true,
    scope: 
      title: "@"
      content: "@"
      placement: "@"
      animation: "&"
      isOpen: "&"
    templateUrl: "/templates/popover/popover-html-unsafe-popup.html"

# $popover depends on $tooltip
angular.module("portfolioApp").directive "popoverHtmlUnsafe", ($tooltip) ->
  $tooltip("popoverHtmlUnsafe", "popover", "click")
