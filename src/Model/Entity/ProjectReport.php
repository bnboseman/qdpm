<?php
namespace App\Model\Entity;

use Cake\ORM\Entity;

/**
 * ProjectReport Entity.
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
 * @property int $in_team
 * @property int $sort_order
 * @property bool $display_in_menu
 * @property bool $visible_on_home
 */
class ProjectReport extends Entity
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
