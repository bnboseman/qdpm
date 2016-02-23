<?php
namespace App\Test\TestCase\Controller;

use App\Controller\TaskPriorityController;
use Cake\TestSuite\IntegrationTestCase;

/**
 * App\Controller\TaskPriorityController Test Case
 */
class TaskPriorityControllerTest extends IntegrationTestCase
{

    /**
     * Fixtures
     *
     * @var array
     */
    public $fixtures = [
        'app.task_priority',
        'app.task_comments',
        'app.tasks',
        'app.projects',
        'app.project_statuses',
        'app.discussion_reports',
        'app.users',
        'app.user_groups',
        'app.departments',
        'app.discussion_comments',
        'app.discussions',
        'app.discussion_status',
        'app.events',
        'app.project_reports',
        'app.project_types',
        'app.ticket_reports',
        'app.project_status',
        'app.user_reports',
        'app.task_status',
        'app.task_types',
        'app.task_labels',
        'app.ticket_types',
        'app.ticket_status',
        'app.ticket_comments',
        'app.tickets',
        'app.discussion_statuses',
        'app.project_comments',
        'app.project_phases',
        'app.phase_status',
        'app.task_groups',
        'app.versions',
        'app.versions_status'
    ];

    /**
     * Test index method
     *
     * @return void
     */
    public function testIndex()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }

    /**
     * Test view method
     *
     * @return void
     */
    public function testView()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }

    /**
     * Test add method
     *
     * @return void
     */
    public function testAdd()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }

    /**
     * Test edit method
     *
     * @return void
     */
    public function testEdit()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }

    /**
     * Test delete method
     *
     * @return void
     */
    public function testDelete()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }
}
