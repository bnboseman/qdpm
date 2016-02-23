<?php
namespace App\Test\TestCase\Model\Table;

use App\Model\Table\ProjectsStatusTable;
use Cake\ORM\TableRegistry;
use Cake\TestSuite\TestCase;

/**
 * App\Model\Table\ProjectsStatusTable Test Case
 */
class ProjectsStatusTableTest extends TestCase
{

    /**
     * Fixtures
     *
     * @var array
     */
    public $fixtures = [
        'app.projects_status',
        'app.projects',
        'app.projects_types',
        'app.discussions',
        'app.users',
        'app.statuses',
        'app.tasks',
        'app.versions',
        'app.phases',
        'app.projects_phases',
        'app.phases_status',
        'app.projects_reports',
        'app.projects_statuses',
        'app.tickets_reports',
        'app.user_reports'
    ];

    /**
     * setUp method
     *
     * @return void
     */
    public function setUp()
    {
        parent::setUp();
        $config = TableRegistry::exists('ProjectsStatus') ? [] : ['className' => 'App\Model\Table\ProjectsStatusTable'];
        $this->ProjectsStatus = TableRegistry::get('ProjectsStatus', $config);
    }

    /**
     * tearDown method
     *
     * @return void
     */
    public function tearDown()
    {
        unset($this->ProjectsStatus);

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
