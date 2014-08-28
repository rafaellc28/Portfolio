angular.module('portfolioApp').controller "CertificateController", ($scope, $routeParams, Certificate) ->
  
  $scope.init = ->        
    @certificateService = new Certificate($routeParams.id, serverErrorHandler)
    $scope.certificate = @certificateService.find $routeParams.id
    
  serverErrorHandler = ->
    alert("There was a server error, please reload the page and try again!")
