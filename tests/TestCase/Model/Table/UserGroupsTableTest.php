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
     * Test subject
     *
     * @var \App\Model\Table\UserGroupsTable
     */
    public $UserGroups;

    /**
     * Fixtures
     *
     * @var array
     */
    public $fixtures = [
        'app.user_groups',
        'app.users',
        'app.department',
        'app.supervisors',
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
        'app.ticket_comments',
        'app.tickets',
        'app.departments',
        'app.ticket_types',
        'app.ticket_status',
        'app.tasks',
        'app.task_status',
        'app.task_priority',
        'app.task_types',
        'app.task_labels',
        'app.task_groups',
        'app.project_phases',
        'app.versions',
        'app.creators',
        'app.ticket_reports',
        'app.user_reports',
        'app.project_types',
        'app.user_group',
        'app.task_comments',
        'app.attachments',
        'app.assigned_to',
        'app.tasks_users',
        'app.comments',
        'app.reports',
        'app.team',
        'app.projects_users',
        'app.discussion_status'
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
