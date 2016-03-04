var app = angular.module('TaskManager');

app.controller('TaskManagerCtrl', ['$scope', '$http',
    function($scope, $http) {
        $http.get('/users/reports.json').success(function(data) {
            $scope.reports = data;
        });

    }
]);