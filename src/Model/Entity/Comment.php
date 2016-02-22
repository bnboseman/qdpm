<?php
namespace App\Model\Entity;

use Cake\ORM\Entity;

/**
 * Comment Entity.
 *
 * @property int $id
 * @property int $bind_id
 * @property \App\Model\Entity\Task $task
 * @property string $bind_type
 * @property int $user_id
 * @property \App\Model\Entity\User $user
 * @property int $status_id
 * @property \App\Model\Entity\Status $status
 * @property int $priority_id
 * @property \App\Model\Entity\Priorty $priorty
 * @property \Cake\I18n\Time $due_date
 * @property float $worked_hours
 * @property string $description
 * @property int $progress
 * @property \Cake\I18n\Time $created
 */
class Comment extends Entity
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
