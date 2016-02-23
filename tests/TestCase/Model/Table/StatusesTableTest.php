<?php
namespace App\Test\TestCase\Model\Table;

use App\Model\Table\StatusesTable;
use Cake\ORM\TableRegistry;
use Cake\TestSuite\TestCase;

/**
 * App\Model\Table\StatusesTable Test Case
 */
class StatusesTableTest extends TestCase
{

    /**
     * Fixtures
     *
     * @var array
     */
    public $fixtures = [
        'app.statuses',
        'app.comments',
        'app.tasks',
        'app.users',
        'app.priorties',
        'app.discussions',
        'app.projects',
        'app.projects_status',
        'app.projects_reports',
        'app.projects_types',
        'app.projects_statuses',
        'app.tickets_reports',
        'app.user_reports',
        'app.versions',
        'app.phases',
        'app.projects_phases',
        'app.phases_status'
    ];

    /**
     * setUp method
     *
     * @return void
     */
    public function setUp()
    {
        parent::setUp();
        $config = TableRegistry::exists('Statuses') ? [] : ['className' => 'App\Model\Table\StatusesTable'];
        $this->Statuses = TableRegistry::get('Statuses', $config);
    }

    /**
     * tearDown method
     *
     * @return void
     */
    public function tearDown()
    {
        unset($this->Statuses);

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
