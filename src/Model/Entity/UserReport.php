<?php
namespace App\Model\Entity;

use Cake\ORM\Entity;

/**
 * UserReport Entity.
 *
 * @property int $id
 * @property int $user_id
 * @property \App\Model\Entity\User $user
 * @property string $name
 * @property bool $display_on_home
 * @property string $project_id
 * @property \App\Model\Entity\Project $project
 * @property string $project_type_id
 * @property \App\Model\Entity\ProjectType $project_type
 * @property string $project_status_id
 * @property \App\Model\Entity\ProjectStatus $project_status
 * @property string $assigned_to
 * @property string $task_status_id
 * @property \App\Model\Entity\TaskStatus $task_status
 * @property string $task_type_id
 * @property \App\Model\Entity\TaskType $task_type
 * @property string $task_label_id
 * @property \App\Model\Entity\TaskLabel $task_label
 * @property \Cake\I18n\Time $due_date_from
 * @property \Cake\I18n\Time $due_date_to
 * @property \Cake\I18n\Time $created_from
 * @property \Cake\I18n\Time $created_to
 * @property \Cake\I18n\Time $closed_from
 * @property \Cake\I18n\Time $closed_to
 * @property int $sort_order
 */
class UserReport extends Entity
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
