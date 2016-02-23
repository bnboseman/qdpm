<?php
namespace App\Test\TestCase\Model\Behavior;

use App\Model\Behavior\OwnedByBehavior;
use Cake\TestSuite\TestCase;

/**
 * App\Model\Behavior\OwnedByBehavior Test Case
 */
class OwnedByBehaviorTest extends TestCase
{

    /**
     * Test subject
     *
     * @var \App\Model\Behavior\OwnedByBehavior
     */
    public $OwnedBy;

    /**
     * setUp method
     *
     * @return void
     */
    public function setUp()
    {
        parent::setUp();
        $this->OwnedBy = new OwnedByBehavior();
    }

    /**
     * tearDown method
     *
     * @return void
     */
    public function tearDown()
    {
        unset($this->OwnedBy);

        parent::tearDown();
    }

    /**
     * Test initial setup
     *
     * @return void
     */
    public function testInitialization()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }
}
