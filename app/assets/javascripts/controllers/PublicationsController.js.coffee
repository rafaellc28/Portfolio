angular.module('portfolioApp').controller "PublicationsController", ($scope, Publications) ->

  $scope.init = ->
    @view = false
  	        
    @publicationsService = new Publications(serverErrorHandler)
    $scope.publications = @publicationsService.all()
  
  $scope.toogleVisibilty = ->
    @view = !@view
  
  serverErrorHandler = ->
    alert("There was a server error, please reload the page and try again!")
