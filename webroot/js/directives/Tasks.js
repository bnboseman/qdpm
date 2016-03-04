var app = angular.module('TaskManager');

app.directive('task', function() {
    return {
        restrict: 'E',
        templateUrl: '/partials/tasks/view.html',
        scope: {
            task: '=task',
            project: '=project'
        },
        controller: 'TasksCtrl'
    };
});

app.directive('tasks', function() {
    return {
        restrict: 'E',
        templateUrl: '/partials/tasks/index.html',
        scope: {
            tasks: '=tasks',
            project: '=project'
        },
    };
});