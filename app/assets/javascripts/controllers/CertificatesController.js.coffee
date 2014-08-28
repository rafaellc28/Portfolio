angular.module('portfolioApp').controller "CertificatesController", ($scope, Certificates) ->

  $scope.init = ->
    @view = false
  	
    @certificatesService = new Certificates(serverErrorHandler)
    $scope.certificates = @certificatesService.all()
  
  $scope.toogleVisibilty = ->
  	@view = not @view
  
  serverErrorHandler = ->
    alert("There was a server error, please reload the page and try again!")

  