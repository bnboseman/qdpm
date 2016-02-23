<?php
namespace App\Test\TestCase\Model\Behavior;

use App\Model\Behavior\PolymorphicBehavior;
use Cake\TestSuite\TestCase;

/**
 * App\Model\Behavior\PolymorphicBehavior Test Case
 */
class PolymorphicBehaviorTest extends TestCase
{

    /**
     * setUp method
     *
     * @return void
     */
    public function setUp()
    {
        parent::setUp();
        $this->Polymorphic = new PolymorphicBehavior();
    }

    /**
     * tearDown method
     *
     * @return void
     */
    public function tearDown()
    {
        unset($this->Polymorphic);

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
