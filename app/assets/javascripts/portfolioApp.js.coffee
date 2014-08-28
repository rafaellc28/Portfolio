portfolioApp = angular.module('portfolioApp', ['ngResource', 'ngRoute', 'ui.bootstrap'])

# Makes AngularJS work with CSRF protection.
portfolioApp.config ($httpProvider) ->
  authToken = $("meta[name=\"csrf-token\"]").attr("content")
  $httpProvider.defaults.headers.common["X-CSRF-TOKEN"] = authToken
  #$httpProvider.defaults.headers.common['Authorization'] = 'Basic ' + window.btoa("email:password")
  $httpProvider.defaults.headers.common['Authorization'] = 'Token token=token_generated_for_single_user'
  
portfolioApp.config ($routeProvider, $locationProvider) ->
  $locationProvider.html5Mode true
  $routeProvider.when '/spa', templateUrl: '/templates/spa/index.html', controller: 'SpaController'
  $routeProvider.when '/educations', templateUrl: '/templates/educations/index.html', controller: 'EducationsController'
  $routeProvider.when '/educations/:id', templateUrl: '/templates/educations/show.html', controller: 'EducationController'
  #alert('"Hello"'.replace(/(^"|"$)/g, ''))
  
portfolioApp.config ($tooltipProvider) ->
  opt = 
    trigger: 'click'
    placement: 'top'
    #html-unsafe: ''
  
  $tooltipProvider.options(opt)
  
# Makes AngularJS work with turbolinks.
$(document).on 'page:load', ->
  $('[ng-app]').each ->
    module = $(this).attr('ng-app')
    angular.bootstrap(this, [module])
  
