(function(){angular.module("portfolioApp").controller("ProjectsController",function($scope,Projects){var serverErrorHandler;return $scope.init=function(){return this.projectsService=new Projects(serverErrorHandler),$scope.projects=this.projectsService.all()},serverErrorHandler=function(){return alert("Server error, please try again!")}})}).call(this);