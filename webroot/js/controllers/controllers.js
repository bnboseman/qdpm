var controllers = angular.module('TaskManagerControllers', []);

controllers.controller('TaskManagerCtrl', ['$scope', '$http',
 function ($scope, $http) {
   $http.get('users/reports.json').success(function(data) {
     $scope.reports = data;
   });

 }]);