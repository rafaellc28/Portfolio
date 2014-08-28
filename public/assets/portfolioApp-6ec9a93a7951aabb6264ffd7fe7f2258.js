(function() {
  var portfolioApp;

  portfolioApp = angular.module('portfolioApp', ['ngResource']);

  portfolioApp.config(function($httpProvider) {
    var authToken;
    authToken = $("meta[name=\"csrf-token\"]").attr("content");
    return $httpProvider.defaults.headers.common["X-CSRF-TOKEN"] = authToken;
  });

  portfolioApp.config(function($routeProvider, $locationProvider) {
    return $routeProvider.when('/educations', {
      templateUrl: '/templates/index2.html.erb',
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
