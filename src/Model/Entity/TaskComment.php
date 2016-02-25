<?php
namespace App\Model\Entity;

use Cake\ORM\Entity;

/**
 * TaskComment Entity.
 *
 * @property int $id
 * @property int $task_id
 * @property \App\Model\Entity\Task $task
 * @property int $created_by
 * @property int $task_status_id
 * @property \App\Model\Entity\TaskStatus $task_status
 * @property int $task_priority_id
 * @property \App\Model\Entity\TaskPriority $task_priority
 * @property \Cake\I18n\Time $due_date
 * @property float $worked_hours
 * @property string $description
 * @property \Cake\I18n\Time $created
 * @property int $progress
 */
class TaskComment extends Entity
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
    
    protected  $_hidden = [
    		'task_id',
    		'task_status_id',
    		'task_priority_id'
    ];
}
