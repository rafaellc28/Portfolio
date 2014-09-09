angular.module('portfolioApp').controller "CompaniesController", ($scope, Companies) ->

  $scope.init = ->
    @companiesService = new Companies(serverErrorHandler)
    $scope.companies = @companiesService.all()
  
  serverErrorHandler = ->
    alert("Server error in CompaniesController, please try again!")
