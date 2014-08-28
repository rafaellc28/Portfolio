(function() {
  var portfolioApp;

  portfolioApp = angular.module('portfolioApp', ['ngResource', 'ngRoute']);

  portfolioApp.config(function($httpProvider) {
    var authToken;
    authToken = $("meta[name=\"csrf-token\"]").attr("content");
    return $httpProvider.defaults.headers.common["X-CSRF-TOKEN"] = authToken;
  });

  portfolioApp.config(function($routeProvider, $locationProvider) {
    $locationProvider.html5Mode(true);
    return $routeProvider.when('/educations', {
      templateUrl: '/templates/index.html',
      controller: 'EducationsController'
    });
  });

  $(document).on('page:load', function() {
    return $('[ng-app]').each(function() {
      var module;
      module = $(this).attr('ng-app');
      return angular.bootstrap(this, [module]);
    });
  });

}).call(this);
