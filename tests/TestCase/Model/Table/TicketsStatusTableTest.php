<?php
namespace App\Test\TestCase\Model\Table;

use App\Model\Table\TicketsStatusTable;
use Cake\ORM\TableRegistry;
use Cake\TestSuite\TestCase;

/**
 * App\Model\Table\TicketsStatusTable Test Case
 */
class TicketsStatusTableTest extends TestCase
{

    /**
     * Fixtures
     *
     * @var array
     */
    public $fixtures = [
        'app.tickets_status',
        'app.tickets',
        'app.departments',
        'app.users',
        'app.tickets_types',
        'app.projects',
        'app.projects_status',
        'app.projects_reports',
        'app.projects_types',
        'app.projects_statuses',
        'app.tickets_reports',
        'app.tickets_statuses',
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
        'app.phases'
    ];

    /**
     * setUp method
     *
     * @return void
     */
    public function setUp()
    {
        parent::setUp();
        $config = TableRegistry::exists('TicketsStatus') ? [] : ['className' => 'App\Model\Table\TicketsStatusTable'];
        $this->TicketsStatus = TableRegistry::get('TicketsStatus', $config);
    }

    /**
     * tearDown method
     *
     * @return void
     */
    public function tearDown()
    {
        unset($this->TicketsStatus);

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
}
