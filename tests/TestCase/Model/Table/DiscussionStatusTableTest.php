<?php
namespace App\Test\TestCase\Model\Table;

use App\Model\Table\DiscussionStatusTable;
use Cake\ORM\TableRegistry;
use Cake\TestSuite\TestCase;

/**
 * App\Model\Table\DiscussionStatusTable Test Case
 */
class DiscussionStatusTableTest extends TestCase
{

    /**
     * Fixtures
     *
     * @var array
     */
    public $fixtures = [
        'app.discussion_status',
        'app.discussion_comments',
        'app.discussions',
        'app.projects',
        'app.project_status',
        'app.discussion_reports',
        'app.users',
        'app.user_groups',
        'app.departments',
        'app.events',
        'app.project_reports',
        'app.project_types',
        'app.ticket_reports',
        'app.ticket_types',
        'app.ticket_status',
        'app.ticket_comments',
        'app.tickets',
        'app.tasks',
        'app.task_status',
        'app.task_comments',
        'app.task_priority',
        'app.user_reports',
        'app.task_types',
        'app.task_labels',
        'app.task_groups',
        'app.project_phases',
        'app.phase_status',
        'app.versions',
        'app.versions_status',
        'app.project_statuses',
        'app.discussion_statuses',
        'app.project_comments'
    ];

    /**
     * setUp method
     *
     * @return void
     */
    public function setUp()
    {
        parent::setUp();
        $config = TableRegistry::exists('DiscussionStatus') ? [] : ['className' => 'App\Model\Table\DiscussionStatusTable'];
        $this->DiscussionStatus = TableRegistry::get('DiscussionStatus', $config);
    }

    /**
     * tearDown method
     *
     * @return void
     */
    public function tearDown()
    {
        unset($this->DiscussionStatus);

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
