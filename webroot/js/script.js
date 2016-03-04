 var app = angular.module('TaskManager', ['ngRoute', 'angularUtils.directives.dirPagination', 'angularMoment', 'ui.bootstrap', 'ui.tinymce']);

app.factory("OrderService", ['$filter', function($filter) {
	var predicate = null;
    var reverse = false;
    var  orderBy =  $filter('orderBy');
  return {
    order: function(items, predicate, item) {
    		if($scope.predicate === predicate) {
    			$scope.reverse = ($scope.predicate === predicate) ? !$scope.reverse : false;
    			
    		}
    		$scope.predicate = predicate;
    		if ( $scope.reverse == true ) {
    			if(item) {
    				return  orderBy(items[item] , "-" + $scope.predicate);
    			} else {
    				return orderBy(items, "-" + $scope.predicate);
    			}
    		} else {
    			if(item) {
    				return orderBy(items[item], $scope.predicate, $scope.reverse);
    			} else {
    				return orderBy($scope.items, $scope.predicate, $scope.reverse);
    			}
    		}
    }
  };
}]);




app.config(['$routeProvider', '$locationProvider',
        function($routeProvider, $locationProvider) {
            $routeProvider.
            when('/', {
                templateUrl: '/partials/dashboard.html',
                controller: 'TaskManagerCtrl'
            }).
            when('/projects', {
                templateUrl: '/partials/projects/index.html',
                controller: 'ProjectsCtrl'
            }).
            when('/projects/add', {
            	templateUrl: '/partials/projects/add.html',
            	controller: 'ProjectsCtrl'
            }).
            when('/projects/:project_id/tasks', {
                templateUrl: '/partials/projects/tasks.html',
                controller: 'ProjectsCtrl'
            }).
            when('/projects/view/:project_id', {
                templateUrl: '/partials/projects/view.html',
                controller: 'ProjectsCtrl'
            }).
            when('/projects/:project_id/tasks/:task_id', {
                templateUrl: '/	partials/projects/task.html',
                controller: 'ProjectsCtrl'
            }).
            when('/projects/:project_id/tickets/:ticket_id', {
                templateUrl: '/	partials/projects/ticket.html',
                controller: 'ProjectsCtrl'
            }).
            when('/tasks', {
                templateUrl: '/partials/tasks/index.html',
                controller: 'TasksCtrl'
            }).
            when('/projects/:project_id/tickets', {
                templateUrl: '/partials/projects/tasks.html',
                controller: 'ProjectsCtrl'
            }).
            when('/projects/:project_id/tickets', {
                templateUrl: '/partials/projects/tickets.html',
                controller: 'ProjectsCtrl'
            }).
            when('/tickets', {
            	templateUrl: '/partials/tickets/index.html',
                controller: 'TicketsCtrl'
            }).
            when('/tickets/add', {
            	templateUrl: '/partials/tickets/add.html',
            	controller: 'TicketsCtrl'
            })
        }
    ])
    .directive('a', function() {
        return {
            restrict: 'E',
            link: function(scope, elem, attrs) {
                if (attrs.toggle) {
                    elem.on('click', function(e) {
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