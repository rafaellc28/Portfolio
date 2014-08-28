(function() {
  angular.module('portfolioApp').controller("EducationsController", function($scope, $route, $routeParams, $location, Educations) {
    var serverErrorHandler;
    $scope.$route = $route;
    $scope.$location = $location;
    $scope.$routeParams = $routeParams;
    $scope.init = function() {
      this.listsService = new Educations(serverErrorHandler);
      $scope.lists = this.listsService.all();
      return alert("test");
    };
    return serverErrorHandler = function() {
      return alert("There was a server error, please reload the page and try again.");
    };
  });

}).call(this);
