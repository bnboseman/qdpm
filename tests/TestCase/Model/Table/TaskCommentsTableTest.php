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
     * Fixtures
     *
     * @var array
     */
    public $fixtures = [
        'app.task_comments',
        'app.tasks',
        'app.projects',
        'app.project_statuses',
        'app.discussion_reports',
        'app.users',
        'app.user_groups',
        'app.departments',
        'app.discussion_comments',
        'app.discussions',
        'app.discussion_status',
        'app.events',
        'app.project_reports',
        'app.project_types',
        'app.ticket_reports',
        'app.project_status',
        'app.user_reports',
        'app.task_status',
        'app.task_types',
        'app.task_labels',
        'app.ticket_types',
        'app.ticket_status',
        'app.ticket_comments',
        'app.tickets',
        'app.discussion_statuses',
        'app.project_comments',
        'app.project_phases',
        'app.phase_status',
        'app.task_groups',
        'app.versions',
        'app.versions_status',
        'app.task_priority'
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
