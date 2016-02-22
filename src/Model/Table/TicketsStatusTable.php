<?php
namespace App\Model\Table;

use App\Model\Entity\TicketsStatus;
use Cake\ORM\Query;
use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\Validation\Validator;

/**
 * TicketsStatus Model
 *
 * @property \Cake\ORM\Association\HasMany $Tickets
 * @property \Cake\ORM\Association\HasMany $TicketsReports
 */
class TicketsStatusTable extends Table
{

    /**
     * Initialize method
     *
     * @param array $config The configuration for the Table.
     * @return void
     */
    public function initialize(array $config)
    {
        parent::initialize($config);

        $this->table('tickets_status');
        $this->displayField('name');
        $this->primaryKey('id');

        $this->hasMany('Tickets', [
            'foreignKey' => 'tickets_status_id'
        ]);
        $this->hasMany('TicketsReports', [
            'foreignKey' => 'tickets_status_id'
        ]);
    }

    /**
     * Default validation rules.
     *
     * @param \Cake\Validation\Validator $validator Validator instance.
     * @return \Cake\Validation\Validator
     */
    public function validationDefault(Validator $validator)
    {
        $validator
            ->add('id', 'valid', ['rule' => 'numeric'])
            ->allowEmpty('id', 'create');

        $validator
            ->requirePresence('name', 'create')
            ->notEmpty('name');

        $validator
            ->allowEmpty('group');

        $validator
            ->add('sort_order', 'valid', ['rule' => 'numeric'])
            ->allowEmpty('sort_order');

        $validator
            ->add('default_value', 'valid', ['rule' => 'numeric'])
            ->allowEmpty('default_value');

        $validator
            ->allowEmpty('active');

        return $validator;
    }
}
