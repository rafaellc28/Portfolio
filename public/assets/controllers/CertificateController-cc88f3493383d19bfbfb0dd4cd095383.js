(function(){angular.module("portfolioApp").controller("CertificateController",function($scope,$routeParams,Certificate){var serverErrorHandler;return $scope.init=function(){return this.certificateService=new Certificate($routeParams.id,serverErrorHandler),$scope.certificate=this.certificateService.all()},serverErrorHandler=function(){return alert("Server error, please try again!")}})}).call(this);