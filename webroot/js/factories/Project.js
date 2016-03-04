var app = angular.module('TaskManager');

app.factory("Project", function ProjectFactory($http) {
    return {
        all: function() {
            return $http.get('/projects.json');
        },
        read: function(id) {
            return $http.get('/projects/' + id + '.json');
        },
        create: function(project) {
            return $http({
                method: "POST",
                url: "/projects.json",
                data: JSON.stringify(project)
            });
        },
        remove: function(id) {
            return $http({
                method: "DELETE",
                url: '/projects/' + id + '.json',
                data: id
            });
        },
        removeComment: function(project_id, comment_id) {
            return $http({
                method: "DELETE",
                url: '/projects/' + project_id + '/project_comments/' + comment_id + '.json',
                data: comment_id
            });
        }
    }
});