<?php
namespace App\Model\Entity;

use Cake\ORM\Entity;
use App\Model\Table\ProjectTable;

/**
 * Project Entity.
 *
 * @property int $id
 * @property int $project_status_id
 * @property \App\Model\Entity\ProjectStatus $project_status
 * @property int $project_types_id
 * @property \App\Model\Entity\ProjectType $project_type
 * @property int $created_by
 * @property string $name
 * @property string $description
 * @property string $team
 * @property \Cake\I18n\Time $created
 * @property string $order_task_by
 * @property \App\Model\Entity\DiscussionReport[] $discussion_reports
 * @property \App\Model\Entity\Discussion[] $discussions
 * @property \App\Model\Entity\ProjectComment[] $project_comments
 * @property \App\Model\Entity\ProjectPhase[] $project_phases
 * @property \App\Model\Entity\ProjectReport[] $project_reports
 * @property \App\Model\Entity\TaskGroup[] $task_groups
 * @property \App\Model\Entity\Task[] $tasks
 * @property \App\Model\Entity\TicketReport[] $ticket_reports
 * @property \App\Model\Entity\Ticket[] $tickets
 * @property \App\Model\Entity\UserReport[] $user_reports
 * @property \App\Model\Entity\Version[] $versions
 */
class Project extends Entity
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

    protected  $_hidden = [
    		'project_types_id',
    		'created_by',
    		'project_status_id'
    ];
}
