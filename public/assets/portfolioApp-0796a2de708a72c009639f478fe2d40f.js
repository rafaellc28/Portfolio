(function(){var portfolioApp;portfolioApp=angular.module("portfolioApp",["ngResource","ngRoute","templates"]),portfolioApp.config(function($httpProvider){var authToken;return authToken=$('meta[name="csrf-token"]').attr("content"),$httpProvider.defaults.headers.common["X-CSRF-TOKEN"]=authToken}),portfolioApp.config(function($routeProvider,$locationProvider){return $locationProvider.html5Mode(!0),$routeProvider.when("/educations",{templateUrl:"educations.html",controller:"EducationsController"})}),$(document).on("page:load",function(){return $("[ng-app]").each(function(){var module;return module=$(this).attr("ng-app"),angular.bootstrap(this,[module])})})}).call(this);