
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
            when('/tasks', {
                templateUrl: 'partials/tasks/index.html',
                controller: 'TasksCtrl'
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
            	
            	if (view.page == 'task') {
            		Task.read(view.id).success(function(data) {
                        $scope.task = data.task;
                    });
            	}
            }
           
            
            if ($routeParams.id !== undefined) {
            	Project.read($routeParams.id).success(function(data) {
                    $scope.project = data.project;
                });
            	
            	if ($routeParams.id == 16) {
            		 $scope.selectView({'page':'task', 'id': 164});
            	} 
                
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
    ]).controller('TasksCtrl', ['$scope', '$http', '$routeParams', 
    function($scope, $http, $routeParams)   {
    	$scope.task = {};
    	$scope.tasks = {};
    	$scope.view = null;
    	
    	if ($routeParams.id !== undefined) {
        	$http.get('tasks/' + $routeParams.id + '.json').success(function(data) {
                $scope.task = data.task;
            });
            
        } else {
        	 $http.get('tasks.json').success(function(data) {
                 $scope.tasks = data.tasks;
                 $scope.view = 'index';
             });
        }
    	
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