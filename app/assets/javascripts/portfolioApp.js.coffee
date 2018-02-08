portfolioApp = angular.module('portfolioApp', ['ngResource', 'ui.router', 'ngAria', 'ui.bootstrap'])

# Makes AngularJS work with CSRF protection.
portfolioApp.config ($httpProvider) ->
  authToken = $("meta[name=\"csrf-token\"]").attr("content")
  $httpProvider.defaults.headers.common["X-CSRF-TOKEN"] = authToken
  $httpProvider.defaults.headers.common['Authorization'] = 'Token token=eXrJL3xxM8MiGgZ-KpiQ'

portfolioApp.config ($locationProvider) ->
  $locationProvider.html5Mode 
    enabled: true
    requireBase: false
  
portfolioApp.config ($stateProvider, $urlRouterProvider) ->
  $stateProvider.state 'portfolio',
    url: "/",
    templateUrl: "templates/show.html",
    controller: 'PortfolioController'

  $urlRouterProvider.otherwise('/')

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
$(document).on 'page:load', ->
  $('[ng-app]').each ->
    module = $(this).attr('ng-app')
    angular.bootstrap(this, [module])
