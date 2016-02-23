<?php
namespace App\Test\TestCase\Model\Table;

use App\Model\Table\ExtraFieldsTable;
use Cake\ORM\TableRegistry;
use Cake\TestSuite\TestCase;

/**
 * App\Model\Table\ExtraFieldsTable Test Case
 */
class ExtraFieldsTableTest extends TestCase
{

    /**
     * Fixtures
     *
     * @var array
     */
    public $fixtures = [
        'app.extra_fields',
        'app.extra_field_list',
        'app.binds'
    ];

    /**
     * setUp method
     *
     * @return void
     */
    public function setUp()
    {
        parent::setUp();
        $config = TableRegistry::exists('ExtraFields') ? [] : ['className' => 'App\Model\Table\ExtraFieldsTable'];
        $this->ExtraFields = TableRegistry::get('ExtraFields', $config);
    }

    /**
     * tearDown method
     *
     * @return void
     */
    public function tearDown()
    {
        unset($this->ExtraFields);

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
