(function(){angular.module("portfolioApp").controller("EducationsController",function($scope,Educations){var serverErrorHandler;return $scope.init=function(){return this.educationsService=new Educations(serverErrorHandler),$scope.educations=this.educationsService.all()},serverErrorHandler=function(){return alert("Server error, please try again!")}})}).call(this);