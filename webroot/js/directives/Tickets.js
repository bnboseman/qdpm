var app = angular.module('TaskManager');

app.directive('ticket', function() {
    return {
        restrict: 'E',
        templateUrl: '/partials/tickets/view.html',
        scope: {
            ticket: '=ticket',
            project: '=project'
        },
        controller: 'TasksCtrl'
    };
});

app.directive('tickets', function() {
    return {
        restrict: 'E',
        templateUrl: '/partials/tickets/index.html',
        scope: {
            tickets: '=tickets',
            project: '=project'
        },
    };
});