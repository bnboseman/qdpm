<?php
namespace App\Model\Entity;

use Cake\ORM\Entity;

/**
 * ProjectsPhase Entity.
 *
 * @property int $id
 * @property int $projects_id
 * @property \App\Model\Entity\Project $project
 * @property int $phases_status_id
 * @property \App\Model\Entity\PhasesStatus $phases_status
 * @property string $name
 * @property \Cake\I18n\Time $due_date
 */
class ProjectsPhase extends Entity
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
