(function(){angular.module("portfolioApp").factory("Publication",function($resource){var Publication;return Publication=function(){function Publication(pubId,errorHandler){this.service=$resource("/api/publications/:id",{id:pubId}),this.errorHandler=errorHandler}return Publication.prototype.all=function(){return this.service.query(function(){return null},this.errorHandler)},Publication.prototype.find=function(id,successHandler){return this.service.get({id:id},function(list){return"function"==typeof successHandler&&successHandler(list),list},this.errorHandler)},Publication}()})}).call(this);