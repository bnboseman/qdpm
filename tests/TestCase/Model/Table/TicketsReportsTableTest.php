<?php
namespace App\Test\TestCase\Model\Table;

use App\Model\Table\TicketsReportsTable;
use Cake\ORM\TableRegistry;
use Cake\TestSuite\TestCase;

/**
 * App\Model\Table\TicketsReportsTable Test Case
 */
class TicketsReportsTableTest extends TestCase
{

    /**
     * Fixtures
     *
     * @var array
     */
    public $fixtures = [
        'app.tickets_reports',
        'app.users',
        'app.projects',
        'app.projects_status',
        'app.projects_reports',
        'app.projects_types',
        'app.projects_statuses',
        'app.user_reports',
        'app.discussions',
        'app.statuses',
        'app.comments',
        'app.tasks',
        'app.priorties',
        'app.types',
        'app.labels',
        'app.tasks_groups',
        'app.projects_phases',
        'app.phases_status',
        'app.versions',
        'app.tickets',
        'app.departments',
        'app.tickets_types',
        'app.tickets_status',
        'app.phases',
        'app.tickets_statuses'
    ];

    /**
     * setUp method
     *
     * @return void
     */
    public function setUp()
    {
        parent::setUp();
        $config = TableRegistry::exists('TicketsReports') ? [] : ['className' => 'App\Model\Table\TicketsReportsTable'];
        $this->TicketsReports = TableRegistry::get('TicketsReports', $config);
    }

    /**
     * tearDown method
     *
     * @return void
     */
    public function tearDown()
    {
        unset($this->TicketsReports);

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
