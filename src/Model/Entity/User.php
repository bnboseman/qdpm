<?php
namespace App\Model\Entity;

use Cake\ORM\Entity;
use Cake\ORM\TableRegistry;

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

    // Check to see if a user has a right to do a task. returns false on error.
    public function isAuthorized($model, $action, $item = null) {
    	$model = strtolower(trim($model));
    	$action = strtolower(trim($action));

    	// return false if we aren't looking for the right objects
    	if (!in_array($model, ['projects', 'tasks', 'tickets', 'discussions'])) {
    		return false;
    	}

    	// return false if we aren't looking for the correct action
    	if (!in_array($action, ['view', 'manage'])) {
    		return false;
    	}

    	// Get the users group
    	$group = TableRegistry::get('UserGroups')->find('all')->where(['id' => $this->user_group_id])->first()->toArray();

    	// Check to see if the user can do the action
    	switch($action):
    		case 'view':
    			// if the user has full access or can only view
    			if ($group['allow_manage_' . $model] == 1 || $group['allow_manage_' . $model] == 2 ):
    				return true;
    			endif;

    			// if the user can view own only or manage own only
    			if ($group['allow_manage_' . $model] >= 3 && $item != null) {
    				switch($model):
    				case 'projects':
    				case 'tasks':
    				case 'tickets':
    				case 'discussions':
    				endswitch;
    			}
    			break;

    		case 'manage':
    			// if the user has full access
    			if ($group['allow_manage_' . $model] == 1):
    				return true;
    			endif;

    			// if the user can manage their own
    			if ($group['allow_manage_' . $model] == 4 && $item != null):
    				return true;
    			endif;

    			break;
    	endswitch;

    	// return false for everyone else
    	return false;
    }
}
