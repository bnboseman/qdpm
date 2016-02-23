<?php
namespace App\Test\TestCase\Model\Table;

use App\Model\Table\ProjectsPhasesTable;
use Cake\ORM\TableRegistry;
use Cake\TestSuite\TestCase;

/**
 * App\Model\Table\ProjectsPhasesTable Test Case
 */
class ProjectsPhasesTableTest extends TestCase
{

    /**
     * Fixtures
     *
     * @var array
     */
    public $fixtures = [
        'app.projects_phases',
        'app.projects',
        'app.projects_status',
        'app.projects_types',
        'app.discussions',
        'app.users',
        'app.statuses',
        'app.tasks',
        'app.versions',
        'app.phases',
        'app.phases_status'
    ];

    /**
     * setUp method
     *
     * @return void
     */
    public function setUp()
    {
        parent::setUp();
        $config = TableRegistry::exists('ProjectsPhases') ? [] : ['className' => 'App\Model\Table\ProjectsPhasesTable'];
        $this->ProjectsPhases = TableRegistry::get('ProjectsPhases', $config);
    }

    /**
     * tearDown method
     *
     * @return void
     */
    public function tearDown()
    {
        unset($this->ProjectsPhases);

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
