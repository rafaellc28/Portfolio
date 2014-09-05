portfolioApp = angular.module('portfolioApp', ['ngResource', 'ngRoute', 'ui.bootstrap']) #, 'mgcrea.ngStrap', 'mgcrea.ngStrap.tooltip'

# Makes AngularJS work with CSRF protection.
portfolioApp.config ($httpProvider) ->
  authToken = $("meta[name=\"csrf-token\"]").attr("content")
  $httpProvider.defaults.headers.common["X-CSRF-TOKEN"] = authToken
  #$httpProvider.defaults.headers.common['Authorization'] = 'Basic ' + window.btoa("rafaellc25@gmail.com:1PZxZx9AFc1Yh1R")
  $httpProvider.defaults.headers.common['Authorization'] = 'Token token=kbmRirLy1ZoRGQ8gkfwH'
  
portfolioApp.config ($routeProvider, $locationProvider) ->
  $locationProvider.html5Mode true
  $routeProvider.when '/spa', templateUrl: '/templates/spa/index.html', controller: 'SpaController'
  #$routeProvider.when '/educations', templateUrl: '/templates/educations/index.html', controller: 'EducationsController'
  #$routeProvider.when '/educations/:id', templateUrl: '/templates/educations/show.html', controller: 'EducationController'
  #alert('"Hello"'.replace(/(^"|"$)/g, ''))
  
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
  
