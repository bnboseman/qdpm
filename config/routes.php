<?php
/**
 * Routes configuration
 *
 * In this file, you set up routes to your controllers and their actions.
 * Routes are very important mechanism that allows you to freely connect
 * different URLs to chosen controllers and their actions (functions).
 *
 * CakePHP(tm) : Rapid Development Framework (http://cakephp.org)
 * Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 *
 * Licensed under The MIT License
 * For full copyright and license information, please see the LICENSE.txt
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 * @link          http://cakephp.org CakePHP(tm) Project
 * @license       http://www.opensource.org/licenses/mit-license.php MIT License
 */

use Cake\Core\Plugin;
use Cake\Routing\Router;

//Router::defaultRouteClass('DashedRoute');

Router::scope('/', function ($routes) {
	$routes->extensions(['json']);
	$routes->resources('Attachments');
	$routes->resources('configuration');
	$routes->resources('departments');
	$routes->resources('discussion_comments');
	$routes->resources('discussion_reports');
	$routes->resources('discussion_status');
	$routes->resources('discussions');
	$routes->resources('events');
	$routes->resources('extra_field_list');
	$routes->resources('extra_fields');
	$routes->resources('phase_status');
	$routes->resources('phases');
	$routes->resources('project_phases');
	$routes->resources('project_reports');
	$routes->resources('project_status');
	$routes->resources('project_types');
	$routes->resources('projects', function( $routes) {
		$routes->resources('Comments', ['controller' => 'project_comments']);
	});

	$routes->resources('Tasks', function( $routes) {
		$routes->resources('Comments', ['controller' => 'TaskComments']);
	});

	$routes->resources('TaskGroups');
	$routes->resources('TaskLabels');
	$routes->resources('TaskPriority');
	$routes->resources('TaskStatus');
	$routes->resources('TaskTypes');

	$routes->resources('Tickets', function( $routes) {
		$routes->resources('Comments', ['controller' => 'ticket_comments']);
	});

	$routes->resources('ticket_reports');
	$routes->resources('ticket_status');
	$routes->resources('ticket_types');

	$routes->resources('user_groups');
	$routes->resources('user_reports');
	$routes->resources('users');
	$routes->resources('versions');
	$routes->resources('versions_status');


    $routes->connect('/', ['controller' => 'Pages', 'action' => 'display', 'home']);
    $routes->connect('/pages/*', ['controller' => 'Pages', 'action' => 'display']);


    /**
     * Connect catchall routes for all controllers.
     *
     * Using the argument `DashedRoute`, the `fallbacks` method is a shortcut for
     *    `$routes->connect('/:controller', ['action' => 'index'], ['routeClass' => 'DashedRoute']);`
     *    `$routes->connect('/:controller/:action/*', [], ['routeClass' => 'DashedRoute']);`
     *
     * Any route class can be used with this method, such as:
     * - DashedRoute
     * - InflectedRoute
     * - Route
     * - Or your own route class
     *
     * You can remove these routes once you've connected the
     * routes you want in your application.
     */
    //$routes->fallbacks('DashedRoute');
});

/**
 * Load all plugin routes.  See the Plugin documentation on
 * how to customize the loading of plugin routes.
 */
Plugin::routes();
