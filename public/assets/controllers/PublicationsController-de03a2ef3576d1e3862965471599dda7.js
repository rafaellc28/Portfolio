(function(){angular.module("portfolioApp").controller("PublicationsController",function($scope,Publications){var serverErrorHandler;return $scope.init=function(){return this.publicationsService=new Publications(serverErrorHandler),$scope.publications=this.publicationsService.all()},serverErrorHandler=function(){return alert("Server error, please try again!")}})}).call(this);