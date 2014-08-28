(function() {
  angular.module('portfolioApp').factory('Educations', function($resource, $http) {
    var Educations;
    return Educations = (function() {
      function Educations(errorHandler) {
        var defaults;
        this.service = $resource('/api/educations/:id');
        this.errorHandler = errorHandler;
        defaults = $http.defaults.headers;
        defaults.patch = defaults.patch || {};
        defaults.patch['Content-Type'] = 'application/json';
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
