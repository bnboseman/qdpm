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
     * Fixtures
     *
     * @var array
     */
    public $fixtures = [
        'app.ticket_comments',
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
        'app.project_status',
        'app.user_reports',
        'app.task_status',
        'app.task_comments',
        'app.tasks',
        'app.task_priority',
        'app.task_types',
        'app.task_labels',
        'app.task_groups',
        'app.project_phases',
        'app.phase_status',
        'app.versions',
        'app.versions_status',
        'app.ticket_types',
        'app.ticket_status',
        'app.discussion_statuses',
        'app.project_comments',
        'app.discussion_status',
        'app.events'
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
