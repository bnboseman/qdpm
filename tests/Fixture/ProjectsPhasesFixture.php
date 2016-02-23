<?php
namespace App\Test\Fixture;

use Cake\TestSuite\Fixture\TestFixture;

/**
 * ProjectsPhasesFixture
 *
 */
class ProjectsPhasesFixture extends TestFixture
{

    /**
     * Fields
     *
     * @var array
     */
    // @codingStandardsIgnoreStart
    public $fields = [
        'id' => ['type' => 'integer', 'length' => 11, 'unsigned' => false, 'null' => false, 'default' => null, 'comment' => '', 'autoIncrement' => true, 'precision' => null],
        'projects_id' => ['type' => 'integer', 'length' => 11, 'unsigned' => false, 'null' => false, 'default' => '0', 'comment' => '', 'precision' => null, 'autoIncrement' => null],
        'phases_status_id' => ['type' => 'integer', 'length' => 11, 'unsigned' => false, 'null' => true, 'default' => null, 'comment' => '', 'precision' => null, 'autoIncrement' => null],
        'name' => ['type' => 'string', 'length' => 255, 'null' => false, 'default' => '', 'comment' => '', 'precision' => null, 'fixed' => null],
        'due_date' => ['type' => 'date', 'length' => null, 'null' => true, 'default' => null, 'comment' => '', 'precision' => null],
        '_indexes' => [
            'fk_projects_phases_projects' => ['type' => 'index', 'columns' => ['projects_id'], 'length' => []],
            'fk_projects_phases_phases_status' => ['type' => 'index', 'columns' => ['phases_status_id'], 'length' => []],
        ],
        '_constraints' => [
            'primary' => ['type' => 'primary', 'columns' => ['id'], 'length' => []],
            'projects_phases_ibfk_1' => ['type' => 'foreign', 'columns' => ['projects_id'], 'references' => ['projects', 'id'], 'update' => 'cascade', 'delete' => 'cascade', 'length' => []],
            'projects_phases_ibfk_2' => ['type' => 'foreign', 'columns' => ['phases_status_id'], 'references' => ['phases_status', 'id'], 'update' => 'setNull', 'delete' => 'setNull', 'length' => []],
        ],
        '_options' => [
            'engine' => 'InnoDB',
            'collation' => 'utf8_general_ci'
        ],
    ];
    // @codingStandardsIgnoreEnd

    /**
     * Records
     *
     * @var array
     */
    public $records = [
        [
            'id' => 1,
            'projects_id' => 1,
            'phases_status_id' => 1,
            'name' => 'Lorem ipsum dolor sit amet',
            'due_date' => '2015-11-11'
        ],
    ];
}
