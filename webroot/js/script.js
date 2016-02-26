
var app = angular.module('TaskManager', ['ngRoute', 'angularUtils.directives.dirPagination', 'angularMoment', 'ui.bootstrap']);

app.factory("Project", function ProjectFactory($http) {
	return {
		all: function() {
			return $http.get('/projects.json');
		},
		read: function(id) {
			return $http.get('/projects/' + id + '.json');
		},
		create: function() {
			return $http({method: "POST", url: "/projects.json", data:project});
		},
		remove: function(id) {
			return $http({method: "DELETE", url:'/projects/' + id + '.json', data: id});
		}
	}
});
app.factory("Task", function TaskFactory($http) {
	return {
		all: function() {
			return $http.get('/tasks.json');
		},
		read: function(id) {
			return $http.get('/tasks/' + id + '.json');
		},
		create: function() {
			return $http({method: "POST", url: "/tasks.json", data:project});
		},
		removeComment: function(task_id, comment_id) {
			return $http({method: "DELETE", url:'tasks/' + task_id + '/task_comments/' + comment_id + '.json', data: comment_id});
		}
	}
});
app.factory("Ticket", function TicketFactory($http) {
	return {
		all: function() {
			return $http.get('/tickets.json');
		},
		read: function(id) {
			return $http.get('/tickets/' + id + '.json');
		},
		create: function() {
			return $http({method: "POST", url: "/ticket.json", data:project});
		},
		removeComment: function(ticket_id, comment_id) {
			return $http({method: "DELETE", url:'tickets/' + ticket_id + '/ticket_comments/' + comment_id + '.json', data: comment_id});
		}
	}
})

app.directive('task', function() {
  return {
	    restrict: 'E',
	    templateUrl: 'partials/tasks/view.html',
	    scope: {
	        task: '=task'
	      },
	    controller: 'TasksCtrl'
	  };
});

app.config(['$routeProvider', '$locationProvider',
    function($routeProvider, $locationProvider) {
        $routeProvider.
        when('/', {
            templateUrl: 'partials/dashboard.html',
            controller: 'TaskManagerCtrl'
        }).
        when('/projects', {
            templateUrl: 'partials/projects/index.html',
            controller: 'ProjectsCtrl'
        }).
        when('/projects/:id', {
            templateUrl: 'partials/projects/view.html',
            controller: 'ProjectsCtrl'
        }).
        when('/projects/:project_id/tasks/:task_id', {
            templateUrl: 'partials/projects/view.html',
            controller: 'ProjectsCtrl'
        }).
        when('/tasks', {
            templateUrl: 'partials/tasks/index.html',
            controller: 'TasksCtrl'
        }).
        when('/tasks/:id', {
            templateUrl: 'partials/tasks/view.html',
            controller: 'TasksCtrl'
        }).
        when('/tickets', {
            templateUrl: 'partials/tickets/index.html',
            controller: 'TicketsCtrl'
        }).
        when('/tickets/:id', {
            templateUrl: 'partials/tickets/view.html',
            controller: 'TicketsCtrl'
        })
    }
])
.controller('TaskManagerCtrl', ['$scope', '$http',
    function($scope, $http) {
        $http.get('/users/reports.json').success(function(data) {
            $scope.reports = data;
        });

    }
]).controller('ProjectsCtrl', ['$scope', '$http', '$routeParams', 'Project', 'Task',
    function($scope, $http, $routeParams, Project, Task) {
		$scope.alerts = [];
        $scope.project = {};
        $scope.projects = {};
        $scope.view = null;
        $scope.task = {};
        
        $scope.selectView = function(view) {
        	$scope.view = view;
        	$scope.task = {};
        	 
        	if (view.page == 'task') {
        		Task.read(view.id).success(function(data) {
                    $scope.task = data.task;
                });
        	}
        }
       
        if ($routeParams.project_id !== undefined && $routeParams.task_id !== undefined) {
        	Project.read($routeParams.id).success(function(data) {
                $scope.project = data.project;
            });
        	$scope.selectView({'page':'task', 'id': $routeParams.task_id});
        } else if ($routeParams.id !== undefined) {
        	Project.read($routeParams.id).success(function(data) {
                $scope.project = data.project;
            });
        } else {
        	 Project.all().success(function(data) {
                 $scope.projects = data.projects;
                 $scope.view = 'index';
             });
        }
        
        $scope.deleteProject = function(project) {
        	var confirmDelete = confirm("Are you sure you want to delete " + project.name + "?");
        	if ( confirmDelete ) {
        		Project.remove(project.id).success(function() {
        			Project.all().success(function(data) {
                        $scope.projects = data.projects;
                        $scope.alerts.push({type: 'success', msg: project.name + ' has been deleted.'});
        			});
                })
                .error(function(data) {
                	console.log(data.erorr)
                });
        	}
        };
        
        $scope.closeAlert = function(index) {
            $scope.alerts.splice(index, 1);
          };
    }
]).controller('TasksCtrl', ['$scope', '$http', '$routeParams', 'Task',
function($scope, $http, $routeParams, Task)   {
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
    	if ( confirmDelete ) {
    		Task.removeComment(comment.task_id, comment.id).success(function() {
    			Task.read(comment.task_id).success(function(data) {
                    $scope.task = data.task;
                    $scope.alerts.push({type: 'success', msg: 'The comment has been deleted.'});
                });
            })
            .error(function(data) {
            	$scope.alerts.push({type: 'danger', msg: data.message});
            });
    	}
    };
    	
}]).controller('TicketsCtrl', ['$scope', '$http', '$routeParams', 'Ticket',
    function($scope, $http, $routeParams, Ticket)   {
    	$scope.ticket = {};
    	$scope.tickets = {};
    	$scope.view = null;
    	$scope.alerts = [];
    	
    	if ($routeParams.id !== undefined) {
        	Ticket.read($routeParams.id).success(function(data) {
                $scope.ticket = data.ticket;
            });
            
        } else {
        	Ticket.all().success(function(data) {
                 $scope.tickets = data.tickets;
                 $scope.view = 'index';
             });
        }
    	
    	$scope.deleteTicketComment = function(comment) {
        	var confirmDelete = confirm("Are you sure?");
        	if ( confirmDelete ) {
        		Ticket.removeComment(comment.ticket_id, comment.id).success(function() {
        			Ticket.read(comment.ticket_id).success(function(data) {
                        $scope.ticket = data.ticket;
                        $scope.alerts.push({type: 'success', msg: 'The comment has been deleted.'});
                    });
                })
                .error(function(data) {
                	$scope.alerts.push({type: 'danger', msg: data.message});
                });
        	}
        };
    	
}]).directive('a', function() {
    return {
        restrict: 'E',
        link: function(scope, elem, attrs) {
            if(attrs.toggle){
                elem.on('click', function(e){
                    e.preventDefault();
                });
            }
        }
   };
}).filter('unsafe', function($sce) {
    return function(val) {
        return $sce.trustAsHtml(val);
    };
});

$(document).ready(function() {
    $(".dropdown-toggle").dropdown();
});