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
     * Fixtures
     *
     * @var array
     */
    public $fixtures = [
        'app.project_comments',
        'app.projects',
        'app.project_status',
        'app.discussion_reports',
        'app.users',
        'app.user_groups',
        'app.departments',
        'app.discussion_comments',
        'app.discussions',
        'app.discussion_status',
        'app.tasks',
        'app.task_status',
        'app.task_comments',
        'app.task_priority',
        'app.user_reports',
        'app.project_types',
        'app.project_reports',
        'app.ticket_reports',
        'app.ticket_types',
        'app.ticket_status',
        'app.ticket_comments',
        'app.tickets',
        'app.task_types',
        'app.task_labels',
        'app.task_groups',
        'app.project_phases',
        'app.phase_status',
        'app.versions',
        'app.versions_status',
        'app.events',
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
