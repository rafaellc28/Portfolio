angular.module('portfolioApp').controller "ProjectController", ($scope, $routeParams, Project) ->
  
  $scope.init = ->        
    @projectService = new Project($routeParams.id, serverErrorHandler)
    $scope.project = @projectService.find $routeParams.id
    
  serverErrorHandler = ->
    alert("Server error, please try again!")
