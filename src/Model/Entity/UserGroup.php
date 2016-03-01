<?php
namespace App\Model\Entity;

use Cake\ORM\Entity;

/**
 * UserGroup Entity.
 *
 * @property int $id
 * @property string $name
 * @property int $allow_view_all
 * @property int $allow_manage_projects
 * @property int $allow_manage_tasks
 * @property int $allow_manage_tickets
 * @property int $allow_manage_users
 * @property int $allow_manage_configuration
 * @property int $allow_manage_task_viewonly
 * @property int $allow_manage_discussions
 * @propertyint $allow_manage_discussion_viewonly
 * @property \App\Model\Entity\User[] $users
 */
class UserGroup extends Entity
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
