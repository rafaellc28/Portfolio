(function() {
  angular.module('todoApp').factory('Educations', function($resource, $http) {
    var Educations;
    return Educations = (function() {
      function Educations(errorHandler) {
        this.service = $resource('/api/educations/:id', {
          id: '@id'
        });
        this.errorHandler = errorHandler;
      }

      Educations.prototype.all = function() {
        return this.service.query((function() {
          return null;
        }), this.errorHandler);
      };

      Educations.prototype.find = function(id, successHandler) {
        return this.service.get({
          id: id
        }, (function(list) {
          if (typeof successHandler === "function") {
            successHandler(list);
          }
          return list;
        }), this.errorHandler);
      };

      return Educations;

    })();
  });

}).call(this);
