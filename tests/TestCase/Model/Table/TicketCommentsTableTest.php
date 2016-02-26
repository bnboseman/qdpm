<?php
namespace App\Test\TestCase\Model\Table;

use App\Model\Table\TicketCommentsTable;
use Cake\ORM\TableRegistry;
use Cake\TestSuite\TestCase;

/**
 * App\Model\Table\TicketCommentsTable Test Case
 */
class TicketCommentsTableTest extends TestCase
{

    /**
     * Test subject
     *
     * @var \App\Model\Table\TicketCommentsTable
     */
    public $TicketComments;

    /**
     * Fixtures
     *
     * @var array
     */
    public $fixtures = [
        'app.ticket_comments',
        'app.tickets',
        'app.departments',
        'app.supervisors',
        'app.user_groups',
        'app.department',
        'app.users',
        'app.roles',
        'app.discussion_comments',
        'app.discussion_reports',
        'app.discussions',
        'app.projects',
        'app.project_status',
        'app.creator',
        'app.events',
        'app.project_comments',
        'app.project_reports',
        'app.ticket_reports',
        'app.user_reports',
        'app.project_types',
        'app.task_status',
        'app.task_types',
        'app.task_labels',
        'app.user_group',
        'app.attachments',
        'app.tasks',
        'app.task_priority',
        'app.task_groups',
        'app.project_phases',
        'app.versions',
        'app.creators',
        'app.task_comments',
        'app.assigned_to',
        'app.tasks_users',
        'app.reports',
        'app.team',
        'app.projects_users',
        'app.discussion_status',
        'app.ticket_types',
        'app.ticket_status',
        'app.comments'
    ];

    /**
     * setUp method
     *
     * @return void
     */
    public function setUp()
    {
        parent::setUp();
        $config = TableRegistry::exists('TicketComments') ? [] : ['className' => 'App\Model\Table\TicketCommentsTable'];
        $this->TicketComments = TableRegistry::get('TicketComments', $config);
    }

    /**
     * tearDown method
     *
     * @return void
     */
    public function tearDown()
    {
        unset($this->TicketComments);

        parent::tearDown();
    }

    /**
     * Test initialize method
     *
     * @return void
     */
    public function testInitialize()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }

    /**
     * Test validationDefault method
     *
     * @return void
     */
    public function testValidationDefault()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }

    /**
     * Test buildRules method
     *
     * @return void
     */
    public function testBuildRules()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }
}
