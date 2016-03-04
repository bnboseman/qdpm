var app = angular.module('TaskManager');

app.factory("Task", function TaskFactory($http) {
    return {
        all: function() {
            return $http.get('/tasks.json');
        },
        read: function(id) {
            return $http.get('/tasks/' + id + '.json');
        },
        create: function() {
            return $http({
                method: "POST",
                url: "/tasks.json",
                data: project
            });
        },
        removeComment: function(task_id, comment_id) {
            return $http({
                method: "DELETE",
                url: 'tasks/' + task_id + '/task_comments/' + comment_id + '.json',
                data: comment_id
            });
        }
    }
});