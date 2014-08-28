(function() {
  angular.module('todoApp').controller("EducationsController", function($scope, $routeParams, $location, Educations) {
    var serverErrorHandler;
    $scope.init = function() {
      this.listsService = new Educations(serverErrorHandler);
      return $scope.lists = this.listsService.all();
    };
    return serverErrorHandler = function() {
      return alert("There was a server error, please reload the page and try again.");
    };
  });

}).call(this);
