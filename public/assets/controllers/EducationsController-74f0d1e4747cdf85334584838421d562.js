(function() {
  angular.module('todoApp').controller("EducationsController", function($scope, $timeout, $routeParams, Educations) {
    var serverErrorHandler;
    $scope.init = function() {
      this.educationsService = new Educations(serverErrorHandler);
      return $scope.educations = this.educationsService.all;
    };
    return serverErrorHandler = function() {
      return alert("There was a server error, please reload the page and try again.");
    };
  });

}).call(this);
