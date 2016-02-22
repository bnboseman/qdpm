<?php
namespace App\Model\Entity;

use Cake\ORM\Entity;

/**
 * TicketsReport Entity.
 *
 * @property int $id
 * @property int $users_id
 * @property \App\Model\Entity\User $user
 * @property string $name
 * @property bool $display_on_home
 * @property string $projects_id
 * @property \App\Model\Entity\Project $project
 * @property string $projects_type_id
 * @property \App\Model\Entity\ProjectsType $projects_type
 * @property string $projects_status_id
 * @property \App\Model\Entity\ProjectsStatus $projects_status
 * @property string $departments_id
 * @property \App\Model\Entity\Department $department
 * @property string $tickets_types_id
 * @property \App\Model\Entity\TicketsType $tickets_type
 * @property string $tickets_status_id
 * @property \App\Model\Entity\TicketsStatus $tickets_status
 * @property int $sort_order
 */
class TicketsReport extends Entity
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
