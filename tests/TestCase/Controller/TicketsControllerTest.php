<?php
namespace App\Test\TestCase\Controller;

use App\Controller\TicketsController;
use Cake\TestSuite\IntegrationTestCase;

/**
 * App\Controller\TicketsController Test Case
 */
class TicketsControllerTest extends IntegrationTestCase
{

    /**
     * Fixtures
     *
     * @var array
     */
    public $fixtures = [
        'app.tickets',
        'app.departments',
        'app.users',
        'app.user_groups',
        'app.discussion_comments',
        'app.discussions',
        'app.projects',
        'app.project_statuses',
        'app.discussion_reports',
        'app.project_types',
        'app.project_reports',
        'app.ticket_reports',
        'app.ticket_types',
        'app.ticket_statuses',
        'app.user_reports',
        'app.task_statuses',
        'app.task_types',
        'app.tasks',
        'app.task_status',
        'app.task_comments',
        'app.task_priority',
        'app.task_labels',
        'app.task_groups',
        'app.project_phases',
        'app.phase_status',
        'app.versions',
        'app.versions_status',
        'app.discussion_statuses',
        'app.project_comments',
        'app.discussion_status',
        'app.events',
        'app.ticket_comments',
        'app.types',
        'app.status',
        'app.comments'
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
