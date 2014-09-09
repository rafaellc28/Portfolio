angular.module('portfolioApp').controller "PublicationController", ($scope, $routeParams, Publication) ->
  
  $scope.init = ->        
    @publicationService = new Publication($routeParams.id, serverErrorHandler)
    $scope.publication = @publicationService.find $routeParams.id
    
  serverErrorHandler = ->
    alert("Server error in PublicationController, please try again!")
