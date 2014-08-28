angular.module('portfolioApp').controller "CompanyController", ($scope, $routeParams, Company) ->
  
  $scope.init = ->        
    @companyService = new Company($routeParams.id, serverErrorHandler)
    $scope.company = @companyService.find $routeParams.id
    
  serverErrorHandler = ->
    alert("There was a server error, please reload the page and try again!")
