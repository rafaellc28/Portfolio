(function(){angular.module("portfolioApp").factory("Users",function($resource){var Users;return Users=function(){function Users(errorHandler){this.service=$resource("/api/users"),this.errorHandler=errorHandler}return Users.prototype.all=function(){return this.service.query(function(){return null},this.errorHandler)},Users}()})}).call(this);