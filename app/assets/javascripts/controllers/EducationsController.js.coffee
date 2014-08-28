angular.module('portfolioApp').controller "EducationsController", ($scope, Educations) ->

  $scope.init = ->
    @educationsService = new Educations(serverErrorHandler)
    $scope.educations = @educationsService.all()
  
  serverErrorHandler = ->
    alert("There was a server error, please reload the page and try again!")
