(function() {
  angular.module('portfolioApp').controller("EducationsController", function($scope, $routeParams, $location, Educations) {
    var serverErrorHandler;
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
