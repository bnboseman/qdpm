<?php
namespace App\Model\Entity;

use Cake\ORM\Entity;

/**
 * Ticket Entity.
 *
 * @property int $id
 * @property int $department_id
 * @property int $ticket_type_id
 * @property \App\Model\Entity\TicketType $type
 * @property int $ticket_status_id
 * @property \App\Model\Entity\TicketStatus $status
 * @property string $name
 * @property string $description
 * @property int $user_id
 * @property \App\Model\Entity\User $user
 * @property int $project_id
 * @property \App\Model\Entity\Project $project
 * @property \Cake\I18n\Time $created
 * @property \Cake\I18n\Time $modified
 * @property \App\Model\Entity\Department $department
 * @property \App\Model\Entity\Task[] $tasks
 * @property \App\Model\Entity\TicketComment[] $comments
 */
class Ticket extends Entity
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
