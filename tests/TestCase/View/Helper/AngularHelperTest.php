<?php
namespace App\Test\TestCase\View\Helper;

use App\View\Helper\AngularHelper;
use Cake\TestSuite\TestCase;
use Cake\View\View;

/**
 * App\View\Helper\AngularHelper Test Case
 */
class AngularHelperTest extends TestCase
{

    /**
     * Test subject
     *
     * @var \App\View\Helper\AngularHelper
     */
    public $Angular;

    /**
     * setUp method
     *
     * @return void
     */
    public function setUp()
    {
        parent::setUp();
        $view = new View();
        $this->Angular = new AngularHelper($view);
    }

    /**
     * tearDown method
     *
     * @return void
     */
    public function tearDown()
    {
        unset($this->Angular);

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
