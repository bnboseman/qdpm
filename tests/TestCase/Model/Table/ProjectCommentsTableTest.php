<?php
namespace App\Test\TestCase\Model\Table;

use App\Model\Table\ProjectCommentsTable;
use Cake\ORM\TableRegistry;
use Cake\TestSuite\TestCase;

/**
 * App\Model\Table\ProjectCommentsTable Test Case
 */
class ProjectCommentsTableTest extends TestCase
{

    /**
     * Test subject
     *
     * @var \App\Model\Table\ProjectCommentsTable
     */
    public $ProjectComments;

    /**
     * Fixtures
     *
     * @var array
     */
    public $fixtures = [
        'app.project_comments',
        'app.projects',
        'app.project_status',
        'app.creator',
        'app.user_groups',
        'app.department',
        'app.roles',
        'app.discussion_comments',
        'app.discussion_reports',
        'app.discussions',
        'app.users',
        'app.events',
        'app.project_reports',
        'app.ticket_comments',
        'app.ticket_reports',
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
        'app.user_reports',
        'app.project_types',
        'app.user_group',
        'app.task_comments',
        'app.attachments',
        'app.assigned_to',
        'app.tasks_users',
        'app.comments',
        'app.discussion_status',
        'app.reports',
        'app.team',
        'app.projects_users'
    ];

    /**
     * setUp method
     *
     * @return void
     */
    public function setUp()
    {
        parent::setUp();
        $config = TableRegistry::exists('ProjectComments') ? [] : ['className' => 'App\Model\Table\ProjectCommentsTable'];
        $this->ProjectComments = TableRegistry::get('ProjectComments', $config);
    }

    /**
     * tearDown method
     *
     * @return void
     */
    public function tearDown()
    {
        unset($this->ProjectComments);

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
