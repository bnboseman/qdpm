var app = angular.module('TaskManager', ['ngRoute', 'angularUtils.directives.dirPagination', 'TaskManagerControllers']);

app.config(['$routeProvider',
  function($routeProvider) {
    $routeProvider.
      when('/', {
        templateUrl: 'partials/dashboard.html',
        controller: 'TaskManagerCtrl'
      }).
      otherwise({
        redirectTo: '/'
      });
  }]);