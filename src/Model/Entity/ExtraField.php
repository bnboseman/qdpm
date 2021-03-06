<?php
namespace App\Model\Entity;

use Cake\ORM\Entity;

/**
 * ExtraField Entity.
 *
 * @property int $id
 * @property string $name
 * @property string $bind_type
 * @property string $type
 * @property int $sort_order
 * @property bool $active
 * @property bool $display_in_list
 * @property \App\Model\Entity\ExtraFieldList[] $extra_field_list
 */
class ExtraField extends Entity
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
