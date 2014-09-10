portfolioApp = angular.module('portfolioApp', ['ngResource', 'ngRoute', 'ui.bootstrap'])

# Makes AngularJS work with CSRF protection.
portfolioApp.config ($httpProvider) ->
  authToken = $("meta[name=\"csrf-token\"]").attr("content")
  $httpProvider.defaults.headers.common["X-CSRF-TOKEN"] = authToken
  #$httpProvider.defaults.headers.common['Authorization'] = 'Token token=eXrJL3xxM8MiGgZ-KpiQ'

portfolioApp.config ($routeProvider, $locationProvider) ->
  $locationProvider.html5Mode true
  $routeProvider.when '/portfolio', 
    templateUrl: '/templates/show.html', 
    controller: 'MainController',
    resolve: 
      initialData: (InitialDataService) ->
        InitialDataService()

portfolioApp.config ($tooltipProvider) ->
  triggers = 
    'click': 'click'
    'focus': 'blur'
  
  $tooltipProvider.setTriggers(triggers)
  
  opt = 
    trigger: 'click'
    placement: 'bottom'
  
  $tooltipProvider.options(opt)
  
# Makes AngularJS work with turbolinks.
#$(document).ready ->
#  $('[ng-app]').each ->
#    module = $(this).attr('ng-app')
#    angular.bootstrap(this, [module])
  
