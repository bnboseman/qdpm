<?php
namespace App\Test\TestCase\Model\Table;

use App\Model\Table\TicketReportsTable;
use Cake\ORM\TableRegistry;
use Cake\TestSuite\TestCase;

/**
 * App\Model\Table\TicketReportsTable Test Case
 */
class TicketReportsTableTest extends TestCase
{

    /**
     * Fixtures
     *
     * @var array
     */
    public $fixtures = [
        'app.ticket_reports',
        'app.users',
        'app.user_groups',
        'app.departments',
        'app.discussion_comments',
        'app.discussions',
        'app.projects',
        'app.project_statuses',
        'app.discussion_reports',
        'app.project_types',
        'app.project_reports',
        'app.user_reports',
        'app.project_status',
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
        'app.tickets',
        'app.ticket_types',
        'app.ticket_status',
        'app.ticket_comments',
        'app.ticket_statuses',
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
        $config = TableRegistry::exists('TicketReports') ? [] : ['className' => 'App\Model\Table\TicketReportsTable'];
        $this->TicketReports = TableRegistry::get('TicketReports', $config);
    }

    /**
     * tearDown method
     *
     * @return void
     */
    public function tearDown()
    {
        unset($this->TicketReports);

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
