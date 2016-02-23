<?php
namespace App\Model\Entity;

use Cake\ORM\Entity;

/**
 * Task Entity.
 *
 * @property int $id
 * @property int $project_id
 * @property \App\Model\Entity\Project $project
 * @property int $task_status_id
 * @property \App\Model\Entity\TaskStatus $task_status
 * @property int $task_priority_id
 * @property \App\Model\Entity\TaskPriority $task_priority
 * @property int $task_type_id
 * @property \App\Model\Entity\TaskType $task_type
 * @property int $task_label_id
 * @property \App\Model\Entity\TaskLabel $task_label
 * @property int $task_groups_id
 * @property \App\Model\Entity\TaskGroup $task_group
 * @property int $project_phase_id
 * @property \App\Model\Entity\ProjectPhase $project_phase
 * @property int $versions_id
 * @property \App\Model\Entity\Version $version
 * @property int $created_by
 * @property string $name
 * @property string $description
 * @property string $assigned_to
 * @property float $estimated_time
 * @property \Cake\I18n\Time $due_date
 * @property \Cake\I18n\Time $created
 * @property int $ticket_id
 * @property \App\Model\Entity\Ticket $ticket
 * @property \Cake\I18n\Time $closed_date
 * @property int $discussion_id
 * @property \App\Model\Entity\Discussion $discussion
 * @property \Cake\I18n\Time $start_date
 * @property int $progress
 * @property \App\Model\Entity\TaskComment[] $task_comments
 */
class Task extends Entity
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
    		'project_id',
    		'task_priority_id',
    		'task_status_id',
    		'task_type_id',
    		'task_label_id',
    		'task_groups_id',
    		'project_phase_id',
    		'versions_id',
    		'created_by',
    		'ticket_id',
    		'discussion_id'
    ];
}
