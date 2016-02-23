<?php
namespace App\Test\TestCase\Model\Table;

use App\Model\Table\ProjectReportsTable;
use Cake\ORM\TableRegistry;
use Cake\TestSuite\TestCase;

/**
 * App\Model\Table\ProjectReportsTable Test Case
 */
class ProjectReportsTableTest extends TestCase
{

    /**
     * Test subject
     *
     * @var \App\Model\Table\ProjectReportsTable
     */
    public $ProjectReports;

    /**
     * Fixtures
     *
     * @var array
     */
    public $fixtures = [
        'app.project_reports',
        'app.users',
        'app.user_groups',
        'app.department',
        'app.roles',
        'app.discussion_comments',
        'app.discussion_reports',
        'app.discussions',
        'app.projects',
        'app.status',
        'app.creator',
        'app.events',
        'app.project_comments',
        'app.ticket_comments',
        'app.ticket_reports',
        'app.tickets',
        'app.departments',
        'app.types',
        'app.tasks',
        'app.priority',
        'app.labels',
        'app.groups',
        'app.project_phases',
        'app.versions',
        'app.creators',
        'app.user_reports',
        'app.project_types',
        'app.project_status',
        'app.task_status',
        'app.task_types',
        'app.task_labels',
        'app.user_group',
        'app.comments',
        'app.attachments',
        'app.task_comments',
        'app.phases',
        'app.reports',
        'app.project_statuses',
        'app.project_reports_project_status',
        'app.task_groups',
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
        $config = TableRegistry::exists('ProjectReports') ? [] : ['className' => 'App\Model\Table\ProjectReportsTable'];
        $this->ProjectReports = TableRegistry::get('ProjectReports', $config);
    }

    /**
     * tearDown method
     *
     * @return void
     */
    public function tearDown()
    {
        unset($this->ProjectReports);

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
