var app = angular.module('TaskManager');

app.directive('projectNav', function() {
    return {
        restrict: 'E',
        templateUrl: '/partials/projects/navbar.html',
        transclude: true
    };
});