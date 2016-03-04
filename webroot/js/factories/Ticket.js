var app = angular.module('TaskManager');

app.factory("Ticket", function TicketFactory($http) {
    return {
        all: function() {
            return $http.get('/tickets.json');
        },
        read: function(id) {
            return $http.get('/tickets/' + id + '.json');
        },
        create: function() {
            return $http({
                method: "POST",
                url: "/ticket.json",
                data: project
            });
        },
        removeComment: function(ticket_id, comment_id) {
            return $http({
                method: "DELETE",
                url: 'tickets/' + ticket_id + '/ticket_comments/' + comment_id + '.json',
                data: comment_id
            });
        }
    }
});