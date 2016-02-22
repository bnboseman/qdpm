<?php
namespace App\Model\Entity;

use Cake\ORM\Entity;

/**
 * TicketStatus Entity.
 *
 * @property int $id
 * @property string $name
 * @property string $group
 * @property int $sort_order
 * @property int $default_value
 * @property string $active
 * @property \App\Model\Entity\TicketComment[] $ticket_comments
 * @property \App\Model\Entity\TicketReport[] $ticket_reports
 * @property \App\Model\Entity\Ticket[] $tickets
 */
class TicketStatus extends Entity
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
