angular.module('portfolioApp').controller "EducationsController", ($scope, Educations) ->

  $scope.init = ->
    @educationsService = new Educations(serverErrorHandler)
    $scope.educations = @educationsService.all()
  
  serverErrorHandler = ->
    alert("Server error, please try again!")
