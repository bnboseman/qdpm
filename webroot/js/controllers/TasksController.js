var app = angular.module('TaskManager');

app.controller('TasksCtrl', ['$scope', '$http', '$routeParams', 'Task',
    function($scope, $http, $routeParams, Task) {
        $scope.task = {};
        $scope.tasks = {};
        $scope.view = null;
        $scope.alerts = [];

        if ($routeParams.id !== undefined) {
            Task.read($routeParams.id).success(function(data) {
                $scope.task = data.task;
            });

        } else {
            Task.all().success(function(data) {
                $scope.tasks = data.tasks;
                $scope.view = 'index';
            });
        }

        $scope.deleteTaskComment = function(comment) {
            var confirmDelete = confirm("Are you sure?");
            if (confirmDelete) {
                Task.removeComment(comment.task_id, comment.id).success(function() {
                        Task.read(comment.task_id).success(function(data) {
                            $scope.task = data.task;
                            $scope.alerts.push({
                                type: 'success',
                                msg: 'The comment has been deleted.'
                            });
                        });
                    })
                    .error(function(data) {
                        $scope.alerts.push({
                            type: 'danger',
                            msg: data.message
                        });
                    });
            }
        };

    }
]);