<?php
namespace App\Model\Entity;

use Cake\ORM\Entity;

/**
 * TicketComment Entity.
 *
 * @property int $id
 * @property string $description
 * @property \Cake\I18n\Time $created
 * @property int $ticket_id
 * @property \App\Model\Entity\Ticket $ticket
 * @property int $user_id
 * @property \App\Model\Entity\User $user
 * @property int $ticket_status_id
 * @property \App\Model\Entity\TicketStatus $ticket_status
 */
class TicketComment extends Entity
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
