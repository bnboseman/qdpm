<?php
namespace App\Model\Entity;

use Cake\ORM\Entity;

/**
 * TaskPriority Entity.
 *
 * @property int $id
 * @property string $name
 * @property string $icon
 * @property int $sort_order
 * @property bool $default_value
 * @property bool $active
 * @property \App\Model\Entity\TaskComment[] $task_comments
 * @property \App\Model\Entity\Task[] $tasks
 */
class TaskPriority extends Entity
{

    /**
     * Fields that can be mass assigned using newEntity() or patchEntity().
     *
     * Note that when '*' is set to true, this allows all unspecified fields to
     * be mass assigned. For security purposes, it is advised to set '*' to false
     * (or remove it), and explicitly make individual fields accessible as needed.
     *
     * @var array
     */
    protected $_accessible = [
        '*' => true,
        'id' => false,
    ];
}
