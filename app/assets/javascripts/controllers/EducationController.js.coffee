angular.module('portfolioApp').controller "EducationController", ($scope, $routeParams, Education) ->
  
  $scope.init = ->        
    @educationService = new Education($routeParams.id, serverErrorHandler)
    $scope.education = @educationService.find $routeParams.id
    
  serverErrorHandler = ->
    alert("There was a server error, please reload the page and try again!")
