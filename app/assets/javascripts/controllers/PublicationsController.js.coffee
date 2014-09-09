angular.module('portfolioApp').controller "PublicationsController", ($scope, Publications) ->

  $scope.init = ->
  	
    @publicationsService = new Publications(serverErrorHandler)
    $scope.publications = @publicationsService.all()
  
  serverErrorHandler = ->
    alert("Server error, please try again!")
