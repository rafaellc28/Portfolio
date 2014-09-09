angular.module('portfolioApp').controller "CertificateController", ($scope, $routeParams, Certificate) ->
  
  $scope.init = ->        
    @certificateService = new Certificate($routeParams.id, serverErrorHandler)
    $scope.certificate = @certificateService.all()
    
  serverErrorHandler = ->
    alert("Server error, please try again!")
