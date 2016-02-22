<?php
namespace App\Model\Entity;

use Cake\ORM\Entity;

/**
 * UsersGroup Entity.
 *
 * @property int $id
 * @property string $name
 * @property bool $allow_view_all
 * @property bool $allow_manage_projects
 * @property bool $allow_manage_tasks
 * @property bool $allow_manage_tickets
 * @property bool $allow_manage_users
 * @property bool $allow_manage_configuration
 * @property bool $allow_manage_tasks_viewonly
 * @property bool $allow_manage_discussions
 * @property bool $allow_manage_discussions_viewonly
 * @property \App\Model\Entity\User[] $users
 */
class UsersGroup extends Entity
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
