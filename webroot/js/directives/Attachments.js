var app = angular.module('TaskManager');

app.directive('attachmentsList', function() {
    return {
        restrict: 'E',
        templateUrl: '/partials/attachments/list.html',
        scope: {
            attachments: '=attachments',
            type: '=type'
        },
    };
});

app.directive('addAttachments', function() {
    return {
        restrict: 'E',
        templateUrl: '/partials/attachments/Aadd.html',
        scope: {
            type: '=type'
        },
    };
});