angular.module('portfolioApp').controller "CompaniesController", ($scope, Companies) ->

  $scope.init = ->
    @view = false
  	        
    @companiesService = new Companies(serverErrorHandler)
    $scope.companies = @companiesService.all()
  
  $scope.toogleVisibilty = ->
    @view = !@view
  
  
  serverErrorHandler = ->
    alert("There was a server error, please reload the page and try again!")
