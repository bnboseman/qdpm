var app = angular.module('TaskManager');

app.controller('TicketsCtrl', ['$scope', '$http', '$routeParams', '$location', 'Ticket',
    function($scope, $http, $routeParams, $location, Ticket) {
        $scope.ticket = null;
        $scope.tickets = null;
        $scope.view = null;
        $scope.alerts = [];

        if ($routeParams.ticket_id !== undefined) {
            Ticket.read($routeParams.ticket_id).success(function(data) {
                $scope.ticket = data.ticket;
            });

        } else if ($location.path() == '/tickets/add') {
            $scope.save = function() {
                Ticket.create($scope.ticket).success(function(data) {})
            }

            // Set up tinymce options for description
            $scope.tinymceOptions = {
                inline: false,
                plugins: [
                    'advlist autolink lists link image charmap preview hr anchor pagebreak',
                    'searchreplace visualblocks visualchars code fullscreen',
                    'insertdatetime media nonbreaking save table contextmenu directionality',
                    'emoticons paste textcolor colorpicker textpattern imagetools',
                ],
                menubar: false,
                extended_valid_elements: 'span[class]',
                toolbar: 'styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist | forecolor backcolor | link image media',
                skin: 'lightgray',
                theme: 'modern'
            };

            // Add blank project to hold data
            $scope.ticket = {
                department_id: null,
                ticket_type_id: null,
                ticket_status_id: null,
                name: null,
                description: null,
                user_id: null,
                project_id: null
            };

            // Get the project statuses and types to display
            $http.get('/tickets/options.json').success(function(data) {
                $scope.statuses = data.status;
                $scope.ticket.ticket_status_id = data.defaultstatus['id'].toString();
                $scope.types = data.types;
                $scope.ticket.ticket_type_id = $scope.types[0].id.toString();
            });

            // Get information about the current logged in user
            $http.get('/users/info.json').success(function(data) {
                $scope.ticket.user_id = data.user.id.toString();
            });


        } else {
            Ticket.all().success(function(data) {
                $scope.tickets = data.tickets;
                console.log($scope.tickets)
            });
        }



        $scope.deleteTicketComment = function(comment) {
            var confirmDelete = confirm("Are you sure?");
            if (confirmDelete) {
                Ticket.removeComment(comment.ticket_id, comment.id).success(function() {
                        Ticket.read(comment.ticket_id).success(function(data) {
                            $scope.ticket = data.ticket;
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