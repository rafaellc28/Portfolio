(function(){angular.module("portfolioApp").factory("Project",function($resource){var Project;return Project=function(){function Project(projId,errorHandler){this.service=$resource("/api/projects/:id",{id:projId}),this.errorHandler=errorHandler}return Project.prototype.all=function(){return this.service.query(function(){return null},this.errorHandler)},Project.prototype.find=function(id,successHandler){return this.service.get({id:id},function(list){return"function"==typeof successHandler&&successHandler(list),list},this.errorHandler)},Project}()})}).call(this);