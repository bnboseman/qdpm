<?php
namespace App\Test\TestCase\Model\Table;

use App\Model\Table\TaskCommentsTable;
use Cake\ORM\TableRegistry;
use Cake\TestSuite\TestCase;

/**
 * App\Model\Table\TaskCommentsTable Test Case
 */
class TaskCommentsTableTest extends TestCase
{

    /**
     * Test subject
     *
     * @var \App\Model\Table\TaskCommentsTable
     */
    public $TaskComments;

    /**
     * Fixtures
     *
     * @var array
     */
    public $fixtures = [
        'app.task_comments',
        'app.tasks',
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
        'app.project_comments',
        'app.project_reports',
        'app.ticket_comments',
        'app.ticket_reports',
        'app.tickets',
        'app.departments',
        'app.types',
        'app.status',
        'app.attachments',
        'app.comments',
        'app.user_reports',
        'app.project_types',
        'app.task_status',
        'app.task_types',
        'app.task_labels',
        'app.user_group',
        'app.discussion_status',
        'app.project_phases',
        'app.reports',
        'app.task_groups',
        'app.versions',
        'app.team',
        'app.projects_users',
        'app.task_priority',
        'app.creators',
        'app.assigned_to',
        'app.tasks_users'
    ];

    /**
     * setUp method
     *
     * @return void
     */
    public function setUp()
    {
        parent::setUp();
        $config = TableRegistry::exists('TaskComments') ? [] : ['className' => 'App\Model\Table\TaskCommentsTable'];
        $this->TaskComments = TableRegistry::get('TaskComments', $config);
    }

    /**
     * tearDown method
     *
     * @return void
     */
    public function tearDown()
    {
        unset($this->TaskComments);

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
