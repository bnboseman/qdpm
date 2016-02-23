<?php
namespace App\Test\TestCase\Model\Table;

use App\Model\Table\TypesTable;
use Cake\ORM\TableRegistry;
use Cake\TestSuite\TestCase;

/**
 * App\Model\Table\TypesTable Test Case
 */
class TypesTableTest extends TestCase
{

    /**
     * Fixtures
     *
     * @var array
     */
    public $fixtures = [
        'app.types',
        'app.discussions_reports',
        'app.users',
        'app.projects',
        'app.projects_status',
        'app.projects_reports',
        'app.projects_types',
        'app.projects_statuses',
        'app.tickets_reports',
        'app.departments',
        'app.tickets_types',
        'app.tickets_statuses',
        'app.user_reports',
        'app.discussions',
        'app.statuses',
        'app.comments',
        'app.tasks',
        'app.priorties',
        'app.labels',
        'app.tasks_groups',
        'app.projects_phases',
        'app.phases_status',
        'app.versions',
        'app.tickets',
        'app.tickets_status',
        'app.phases',
        'app.project_statuses',
        'app.discussion_statuses'
    ];

    /**
     * setUp method
     *
     * @return void
     */
    public function setUp()
    {
        parent::setUp();
        $config = TableRegistry::exists('Types') ? [] : ['className' => 'App\Model\Table\TypesTable'];
        $this->Types = TableRegistry::get('Types', $config);
    }

    /**
     * tearDown method
     *
     * @return void
     */
    public function tearDown()
    {
        unset($this->Types);

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
