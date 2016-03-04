var app = angular.module('TaskManager');

app.factory("User", function UserFactory($http) {
    return {
        groups: function() {
            return $http.get('/user_groups.json');
        },
        all: function() {
            return $http.get('/users.json');
        },
        read: function(id) {
            return $http.get('/users/' + id + '.json');
        },
        create: function(user) {
            return $http({
                method: "POST",
                url: "/users.json",
                data: JSON.stringify(user)
            });
        },
        remove: function(id) {
            return $http({
                method: "DELETE",
                url: '/users/' + id + '.json',
                data: id
            });
        }
    }
});