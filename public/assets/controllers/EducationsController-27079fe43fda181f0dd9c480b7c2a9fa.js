(function(){angular.module("portfolioApp").controller("EducationsController",["$scope","$routeParams","$location","Educations",function($scope,$routeParams,$location,Educations){var serverErrorHandler;return $scope.init=function(){return this.listsService=new Educations(serverErrorHandler),$scope.lists=this.listsService.all(),alert("test")},serverErrorHandler=function(){return alert("There was a server error, please reload the page and try again.")}}])}).call(this);