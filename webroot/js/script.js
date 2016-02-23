
var app = angular.module('TaskManager', ['ngRoute', 'angularUtils.directives.dirPagination']);

app.config(['$routeProvider', '$locationProvider',
        function($routeProvider, $locationProvider) {
            $routeProvider.
            when('/', {
                templateUrl: 'partials/dashboard.html',
                controller: 'TaskManagerCtrl'
            }).
            when('/projects', {
                templateUrl: 'partials/projects.html',
                controller: 'ProjectsCtrl'
            }).
            otherwise({
                redirectTo: '/'
            });

            
        }
    ])
    .controller('TaskManagerCtrl', ['$scope', '$http',
        function($scope, $http) {
            $http.get('user_reports.json').success(function(data) {
                $scope.reports = data.userReports;
            });

        }
    ]).controller('ProjectsCtrl', ['$scope', '$http',
        function($scope, $http) {
            $scope.project = {};
            $scope.projects = {};

            $http.get('projects.json').success(function(data) {
                $scope.projects = data.projects;
            });
            $scope.deleteProject = function(project) {
            	var confirmDelete = confirm("Are you sure you want to delete " + project.name + "?");
            	if ( confirmDelete ) {
            		$http.delete('/projects/' + project.id + '.json', {params: project.id}).success(function() {
                        var index = $scope.projects.indexOf(project);
                        if (index > -1) {
                        	$scope.projects.splice(index, 1);
                        	$scope.project = {};
                        }
                    })
                    .error(function(data) {
                    	console.log(data.erorr)
                    });
            	}
            };
            
            $scope.openProject = function(id) {
            	 $http.get('project.' + id + 'json').success(function(data) {
                     $scope.project = data.project;
                 });
            }
        }
    ]);