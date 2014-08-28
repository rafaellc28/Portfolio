angular.module('portfolioApp').controller "PublicationController", ($scope, $routeParams, Publication) ->
  
  $scope.init = ->        
    @publicationService = new Publication($routeParams.id, serverErrorHandler)
    $scope.publication = @publicationService.find $routeParams.id
    
  serverErrorHandler = ->
    alert("There was a server error, please reload the page and try again!")
