angular.module('portfolioApp').controller "LabelsController", ($scope, Labels) ->

  $scope.init = ->
    @labelsService = new Labels(serverErrorHandler)
    $scope.labels = @labelsService.all()
  
  serverErrorHandler = ->
    alert("Server error, please try again!")
