var app = angular.module('TaskManager');

app.directive('userList', function() {
    return {
        restrict: 'E',
        templateUrl: '/partials/users/list.html',
        scope: {
            users: '=users',
            type: '=type'
        },
    };
});

app.directive('selectUser', function() {
    return {
        restrict: 'E',
        templateUrl: '/partials/users/groups.html',
        scope: {
            type: '=type',
            groups: '=groups'
        },
    };
});