<?php
namespace App\Test\TestCase\Model\Table;

use App\Model\Table\UsersGroupsTable;
use Cake\ORM\TableRegistry;
use Cake\TestSuite\TestCase;

/**
 * App\Model\Table\UsersGroupsTable Test Case
 */
class UsersGroupsTableTest extends TestCase
{

    /**
     * Fixtures
     *
     * @var array
     */
    public $fixtures = [
        'app.users_groups',
        'app.users',
        'app.comments',
        'app.tasks',
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
        'app.tasks_statuses',
        'app.tasks_types',
        'app.tasks_labels',
        'app.discussions',
        'app.statuses',
        'app.versions',
        'app.phases',
        'app.projects_phases',
        'app.phases_status',
        'app.priorties',
        'app.types',
        'app.discussions_reports',
        'app.project_statuses',
        'app.discussion_statuses',
        'app.labels',
        'app.tasks_groups',
        'app.tickets',
        'app.tickets_status',
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
        $config = TableRegistry::exists('UsersGroups') ? [] : ['className' => 'App\Model\Table\UsersGroupsTable'];
        $this->UsersGroups = TableRegistry::get('UsersGroups', $config);
    }

    /**
     * tearDown method
     *
     * @return void
     */
    public function tearDown()
    {
        unset($this->UsersGroups);

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
