<?php
namespace App\Test\TestCase\Model\Table;

use App\Model\Table\VersionsStatusTable;
use Cake\ORM\TableRegistry;
use Cake\TestSuite\TestCase;

/**
 * App\Model\Table\VersionsStatusTable Test Case
 */
class VersionsStatusTableTest extends TestCase
{

    /**
     * Fixtures
     *
     * @var array
     */
    public $fixtures = [
        'app.versions_status',
        'app.versions',
        'app.projects',
        'app.project_statuses',
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
        'app.tickets',
        'app.ticket_statuses',
        'app.ticket_comments',
        'app.task_statuses',
        'app.task_types',
        'app.task_labels',
        'app.task_groups',
        'app.project_phases',
        'app.phase_status',
        'app.events',
        'app.project_comments',
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
        $config = TableRegistry::exists('VersionsStatus') ? [] : ['className' => 'App\Model\Table\VersionsStatusTable'];
        $this->VersionsStatus = TableRegistry::get('VersionsStatus', $config);
    }

    /**
     * tearDown method
     *
     * @return void
     */
    public function tearDown()
    {
        unset($this->VersionsStatus);

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
