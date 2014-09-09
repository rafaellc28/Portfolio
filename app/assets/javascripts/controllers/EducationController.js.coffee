angular.module('portfolioApp').controller "EducationController", ($scope, $routeParams, Education) ->
  
  $scope.init = ->        
    @educationService = new Education($routeParams.id, serverErrorHandler)
    $scope.education = @educationService.find $routeParams.id
    
  serverErrorHandler = ->
    alert("Server error in EducationController, please try again!")
