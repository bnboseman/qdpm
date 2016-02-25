<?php
namespace App\Model\Entity;

use Cake\ORM\Entity;

/**
 * User Entity.
 *
 * @property int $id
 * @property int $user_group_id
 * @property \App\Model\Entity\UserGroup $user_group
 * @property string $name
 * @property string $photo
 * @property string $email
 * @property string $culture
 * @property string $password
 * @property bool $active
 * @property string $skin
 * @property \App\Model\Entity\Department[] $departments
 * @property \App\Model\Entity\DiscussionComment[] $discussion_comments
 * @property \App\Model\Entity\DiscussionReport[] $discussion_reports
 * @property \App\Model\Entity\Discussion[] $discussions
 * @property \App\Model\Entity\Event[] $events
 * @property \App\Model\Entity\ProjectReport[] $project_reports
 * @property \App\Model\Entity\TicketComment[] $ticket_comments
 * @property \App\Model\Entity\TicketReport[] $ticket_reports
 * @property \App\Model\Entity\Ticket[] $tickets
 * @property \App\Model\Entity\UserReport[] $user_reports
 */
class User extends Entity
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

    protected $_virtual = ['full_name'];

    protected function _getFullName()
    {
    	return $this->_properties['first'] . '  ' . $this->_properties['last'];
    }
    protected $_hidden = ['password', 'supervisor_id', 'role_id', 'user_group_id', 'department_id'];
}
