<?php
namespace App\Model\Entity;

use Cake\ORM\Entity;

/**
 * TicketReport Entity.
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
 * @property string $departments_id
 * @property \App\Model\Entity\Department $department
 * @property string $ticket_types_id
 * @property \App\Model\Entity\TicketType $ticket_type
 * @property string $ticket_status_id
 * @property \App\Model\Entity\TicketStatus $ticket_status
 * @property int $sort_order
 */
class TicketReport extends Entity
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
