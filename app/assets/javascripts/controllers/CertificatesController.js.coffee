angular.module('portfolioApp').controller "CertificatesController", ($scope, Certificates) ->

  $scope.init = ->
  	
    @certificatesService = new Certificates(serverErrorHandler)
    $scope.certificates = @certificatesService.all()
  
  serverErrorHandler = ->
    alert("Server error in CertificatesController, please try again!")
