(function(){angular.module("portfolioApp").factory("Languages",function($resource){var Languages;return Languages=function(){function Languages(errorHandler){this.service=$resource("/api/languages"),this.errorHandler=errorHandler}return Languages.current={},Languages.prototype.all=function(){return this.service.query(function(){return null},this.errorHandler)},Languages.setLanguages=function(current){return this.current.languages=current,this.current.language=current[0].acronym},Languages.getCurrent=function(){return this.current.languages},Languages.setCurrentLanguage=function(language){return this.current.language=language},Languages.getCurrentLanguage=function(){return this.current.language},Languages}()})}).call(this);