var app = angular.module('TaskManager');

app.controller('ProjectsCtrl', ['$scope', '$http', '$routeParams', '$location', 'Project', 'Task', 'Ticket', 'User',
    function($scope, $http, $routeParams, $location, Project, Task, Ticket, User) {
        $scope.alerts = [];
        $scope.project = null;
        $scope.projects = null;
        $scope.task = null;
        $scope.ticket = null;

        if ($routeParams.project_id !== undefined && $routeParams.task_id !== undefined) {
            Project.read($routeParams.project_id).success(function(data) {
                $scope.project = data.project;

            });
            Task.read($routeParams.task_id).success(function(data) {
                $scope.task = data.task;
            });
        } else if ($routeParams.project_id !== undefined && $routeParams.ticket_id !== undefined) {
            Project.read($routeParams.project_id).success(function(data) {
                $scope.project = data.project;
            });
            Ticket.read($routeParams.ticket_id).success(function(data) {
                $scope.ticket = data.ticket;
            });
        } else if ($location.path() == '/projects/add') {
            $scope.save = function() {
                Project.create($scope.project).success( function(data) {
                	window.location.replace = '/#/projects/view/' + data.project.id;
                });
            }

            User.groups().success(function(data) {
                $scope.groups = data.userGroups;
            }).error(function(error) {
                console.log(error);
            });



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
            $scope.project = {
                project_status_id: null,
                project_type_id: null,
                user_id: null,
                name: null,
                description: null
            };

            // Get the project statuses and types to display
            $http.get('/project_status.json').success(function(data) {
                $scope.statuses = data.projectStatus;
                $scope.project.project_status_id = data.defaultStatus[0]['id'].toString();
            });
            $http.get('/project_types.json').success(function(data) {
                $scope.types = data.projectTypes;
                $scope.project.project_type_id = $scope.types[0]['id'].toString();
            });

            // Get information about the current logged in user
            $http.get('/users/info.json').success(function(data) {
                $scope.project.user_id = data.user.id.toString();
            });


        } else if ($routeParams.project_id !== undefined) {
            Project.read($routeParams.project_id).success(function(data) {
                $scope.project = data.project;
            });
        } else {
            Project.all().success(function(data) {
                $scope.projects = data.projects;
            });
        }

        $scope.deleteProject = function(project) {
            var confirmDelete = confirm("Are you sure you want to delete " + project.name + "?");
            if (confirmDelete) {
                Project.remove(project.id).success(function() {
                        Project.all().success(function(data) {
                            $scope.projects = data.projects;
                            $scope.alerts.push({
                                type: 'success',
                                msg: project.name + ' has been deleted.'
                            });
                        });
                    })
                    .error(function(data) {
                        console.log(data.error)
                    });
            }
        };

        $scope.deleteProjectComment = function(comment) {
            var confirmDelete = confirm("Are you sure?");
            if (confirmDelete) {
                Project.removeComment(comment.project_id, comment.id).success(function() {
                        Project.read(comment.project_id).success(function(data) {
                            $scope.project = data.project;
                            $scope.alerts.push({
                                type: 'success',
                                msg: 'The comment has been deleted.'
                            });
                        });
                    })
                    .error(function(data) {
                        $scope.alerts.push({
                            type: 'danger',
                            msg: "Comment could not be deleted. " + data.message
                        });
                    });
            }
        };
        $scope.closeAlert = function(index) {
            $scope.alerts.splice(index, 1);
        };
    }
]);