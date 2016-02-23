<?php
namespace App\Test\Fixture;

use Cake\TestSuite\Fixture\TestFixture;

/**
 * TasksFixture
 *
 */
class TasksFixture extends TestFixture
{

    /**
     * Fields
     *
     * @var array
     */
    // @codingStandardsIgnoreStart
    public $fields = [
        'id' => ['type' => 'integer', 'length' => 11, 'unsigned' => false, 'null' => false, 'default' => null, 'comment' => '', 'autoIncrement' => true, 'precision' => null],
        'project_id' => ['type' => 'integer', 'length' => 11, 'unsigned' => false, 'null' => false, 'default' => '0', 'comment' => '', 'precision' => null, 'autoIncrement' => null],
        'task_status_id' => ['type' => 'integer', 'length' => 11, 'unsigned' => false, 'null' => true, 'default' => null, 'comment' => '', 'precision' => null, 'autoIncrement' => null],
        'task_priority_id' => ['type' => 'integer', 'length' => 11, 'unsigned' => false, 'null' => true, 'default' => null, 'comment' => '', 'precision' => null, 'autoIncrement' => null],
        'task_type_id' => ['type' => 'integer', 'length' => 11, 'unsigned' => false, 'null' => true, 'default' => null, 'comment' => '', 'precision' => null, 'autoIncrement' => null],
        'task_label_id' => ['type' => 'integer', 'length' => 11, 'unsigned' => false, 'null' => true, 'default' => null, 'comment' => '', 'precision' => null, 'autoIncrement' => null],
        'task_groups_id' => ['type' => 'integer', 'length' => 11, 'unsigned' => false, 'null' => true, 'default' => null, 'comment' => '', 'precision' => null, 'autoIncrement' => null],
        'project_phase_id' => ['type' => 'integer', 'length' => 11, 'unsigned' => false, 'null' => true, 'default' => null, 'comment' => '', 'precision' => null, 'autoIncrement' => null],
        'versions_id' => ['type' => 'integer', 'length' => 11, 'unsigned' => false, 'null' => true, 'default' => null, 'comment' => '', 'precision' => null, 'autoIncrement' => null],
        'created_by' => ['type' => 'integer', 'length' => 11, 'unsigned' => false, 'null' => true, 'default' => null, 'comment' => '', 'precision' => null, 'autoIncrement' => null],
        'name' => ['type' => 'string', 'length' => 255, 'null' => false, 'default' => '', 'comment' => '', 'precision' => null, 'fixed' => null],
        'description' => ['type' => 'text', 'length' => null, 'null' => true, 'default' => null, 'comment' => '', 'precision' => null],
        'assigned_to' => ['type' => 'string', 'length' => 255, 'null' => true, 'default' => null, 'comment' => '', 'precision' => null, 'fixed' => null],
        'estimated_time' => ['type' => 'float', 'length' => null, 'precision' => null, 'unsigned' => false, 'null' => true, 'default' => null, 'comment' => ''],
        'due_date' => ['type' => 'date', 'length' => null, 'null' => true, 'default' => null, 'comment' => '', 'precision' => null],
        'created' => ['type' => 'datetime', 'length' => null, 'null' => true, 'default' => null, 'comment' => '', 'precision' => null],
        'ticket_id' => ['type' => 'integer', 'length' => 11, 'unsigned' => false, 'null' => true, 'default' => null, 'comment' => '', 'precision' => null, 'autoIncrement' => null],
        'closed_date' => ['type' => 'date', 'length' => null, 'null' => true, 'default' => null, 'comment' => '', 'precision' => null],
        'discussion_id' => ['type' => 'integer', 'length' => 11, 'unsigned' => false, 'null' => true, 'default' => null, 'comment' => '', 'precision' => null, 'autoIncrement' => null],
        'start_date' => ['type' => 'date', 'length' => null, 'null' => true, 'default' => null, 'comment' => '', 'precision' => null],
        'progress' => ['type' => 'integer', 'length' => 11, 'unsigned' => false, 'null' => true, 'default' => null, 'comment' => '', 'precision' => null, 'autoIncrement' => null],
        '_indexes' => [
            'fk_task_projects' => ['type' => 'index', 'columns' => ['project_id'], 'length' => []],
            'fk_task_task_status' => ['type' => 'index', 'columns' => ['task_status_id'], 'length' => []],
            'fk_task_task_type' => ['type' => 'index', 'columns' => ['task_type_id'], 'length' => []],
            'fk_task_task_label' => ['type' => 'index', 'columns' => ['task_label_id'], 'length' => []],
            'fk_task_project_phases' => ['type' => 'index', 'columns' => ['project_phase_id'], 'length' => []],
            'fk_task_pople' => ['type' => 'index', 'columns' => ['created_by'], 'length' => []],
            'fk_task_task_groups' => ['type' => 'index', 'columns' => ['task_groups_id'], 'length' => []],
            'fk_task_versions' => ['type' => 'index', 'columns' => ['versions_id'], 'length' => []],
            'fk_task_task_priority' => ['type' => 'index', 'columns' => ['task_priority_id'], 'length' => []],
            'fk_task_tickets' => ['type' => 'index', 'columns' => ['ticket_id'], 'length' => []],
        ],
        '_constraints' => [
            'primary' => ['type' => 'primary', 'columns' => ['id'], 'length' => []],
            'task_ibfk_1' => ['type' => 'foreign', 'columns' => ['project_id'], 'references' => ['projects', 'id'], 'update' => 'cascade', 'delete' => 'cascade', 'length' => []],
            'task_ibfk_10' => ['type' => 'foreign', 'columns' => ['ticket_id'], 'references' => ['tickets', 'id'], 'update' => 'setNull', 'delete' => 'setNull', 'length' => []],
            'task_ibfk_11' => ['type' => 'foreign', 'columns' => ['created_by'], 'references' => ['users', 'id'], 'update' => 'cascade', 'delete' => 'restrict', 'length' => []],
            'task_ibfk_2' => ['type' => 'foreign', 'columns' => ['task_status_id'], 'references' => ['task_status', 'id'], 'update' => 'setNull', 'delete' => 'setNull', 'length' => []],
            'task_ibfk_3' => ['type' => 'foreign', 'columns' => ['task_priority_id'], 'references' => ['task_priority', 'id'], 'update' => 'setNull', 'delete' => 'setNull', 'length' => []],
            'task_ibfk_4' => ['type' => 'foreign', 'columns' => ['task_type_id'], 'references' => ['task_types', 'id'], 'update' => 'setNull', 'delete' => 'setNull', 'length' => []],
            'task_ibfk_5' => ['type' => 'foreign', 'columns' => ['task_label_id'], 'references' => ['task_labels', 'id'], 'update' => 'setNull', 'delete' => 'setNull', 'length' => []],
            'task_ibfk_6' => ['type' => 'foreign', 'columns' => ['task_groups_id'], 'references' => ['task_groups', 'id'], 'update' => 'cascade', 'delete' => 'cascade', 'length' => []],
            'task_ibfk_7' => ['type' => 'foreign', 'columns' => ['project_phase_id'], 'references' => ['project_phases', 'id'], 'update' => 'cascade', 'delete' => 'cascade', 'length' => []],
            'task_ibfk_8' => ['type' => 'foreign', 'columns' => ['versions_id'], 'references' => ['versions', 'id'], 'update' => 'cascade', 'delete' => 'cascade', 'length' => []],
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
            'project_id' => 1,
            'task_status_id' => 1,
            'task_priority_id' => 1,
            'task_type_id' => 1,
            'task_label_id' => 1,
            'task_groups_id' => 1,
            'project_phase_id' => 1,
            'versions_id' => 1,
            'created_by' => 1,
            'name' => 'Lorem ipsum dolor sit amet',
            'description' => 'Lorem ipsum dolor sit amet, aliquet feugiat. Convallis morbi fringilla gravida, phasellus feugiat dapibus velit nunc, pulvinar eget sollicitudin venenatis cum nullam, vivamus ut a sed, mollitia lectus. Nulla vestibulum massa neque ut et, id hendrerit sit, feugiat in taciti enim proin nibh, tempor dignissim, rhoncus duis vestibulum nunc mattis convallis.',
            'assigned_to' => 'Lorem ipsum dolor sit amet',
            'estimated_time' => 1,
            'due_date' => '2016-02-22',
            'created' => '2016-02-22 19:40:21',
            'ticket_id' => 1,
            'closed_date' => '2016-02-22',
            'discussion_id' => 1,
            'start_date' => '2016-02-22',
            'progress' => 1
        ],
    ];
}
