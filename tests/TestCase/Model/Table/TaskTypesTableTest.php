<?php
namespace App\Test\TestCase\Model\Table;

use App\Model\Table\TaskTypesTable;
use Cake\ORM\TableRegistry;
use Cake\TestSuite\TestCase;

/**
 * App\Model\Table\TaskTypesTable Test Case
 */
class TaskTypesTableTest extends TestCase
{

    /**
     * Fixtures
     *
     * @var array
     */
    public $fixtures = [
        'app.task_types',
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
        'app.task_comments',
        'app.task_priority',
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
        'app.versions_status'
    ];

    /**
     * setUp method
     *
     * @return void
     */
    public function setUp()
    {
        parent::setUp();
        $config = TableRegistry::exists('TaskTypes') ? [] : ['className' => 'App\Model\Table\TaskTypesTable'];
        $this->TaskTypes = TableRegistry::get('TaskTypes', $config);
    }

    /**
     * tearDown method
     *
     * @return void
     */
    public function tearDown()
    {
        unset($this->TaskTypes);

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
