angular.module('portfolioApp').controller "LabelsController", ($scope, Labels) ->

  $scope.init = ->
    @labelsService = new Labels(serverErrorHandler)
    $scope.labels = @labelsService.all()
  
  serverErrorHandler = ->
    alert("There was a server error, please reload the page and try again!")
