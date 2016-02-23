<?php
namespace App\Test\TestCase\Model\Table;

use App\Model\Table\UserGroupsTable;
use Cake\ORM\TableRegistry;
use Cake\TestSuite\TestCase;

/**
 * App\Model\Table\UserGroupsTable Test Case
 */
class UserGroupsTableTest extends TestCase
{

    /**
     * Fixtures
     *
     * @var array
     */
    public $fixtures = [
        'app.user_groups',
        'app.users',
        'app.departments',
        'app.discussion_comments',
        'app.discussions',
        'app.projects',
        'app.project_statuses',
        'app.discussion_reports',
        'app.project_types',
        'app.project_reports',
        'app.ticket_reports',
        'app.ticket_types',
        'app.tickets',
        'app.ticket_statuses',
        'app.ticket_comments',
        'app.tasks',
        'app.task_status',
        'app.task_comments',
        'app.task_priority',
        'app.user_reports',
        'app.project_status',
        'app.task_types',
        'app.task_labels',
        'app.task_groups',
        'app.project_phases',
        'app.phase_status',
        'app.versions',
        'app.versions_status',
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
        $config = TableRegistry::exists('UserGroups') ? [] : ['className' => 'App\Model\Table\UserGroupsTable'];
        $this->UserGroups = TableRegistry::get('UserGroups', $config);
    }

    /**
     * tearDown method
     *
     * @return void
     */
    public function tearDown()
    {
        unset($this->UserGroups);

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
