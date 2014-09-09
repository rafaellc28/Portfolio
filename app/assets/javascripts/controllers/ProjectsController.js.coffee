angular.module('portfolioApp').controller "ProjectsController", ($scope, Projects) ->

  $scope.init = ->
  	
    @projectsService = new Projects(serverErrorHandler)
    $scope.projects = @projectsService.all()
  
  serverErrorHandler = ->
    alert("Server error, please try again!")

  