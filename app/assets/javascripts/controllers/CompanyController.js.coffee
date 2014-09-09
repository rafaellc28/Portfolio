angular.module('portfolioApp').controller "CompanyController", ($scope, $routeParams, Company) ->
  
  $scope.init = ->        
    @companyService = new Company($routeParams.id, serverErrorHandler)
    $scope.company = @companyService.find $routeParams.id
    
  serverErrorHandler = ->
    alert("Server error in CompanyController, please try again!")
