<?php
namespace App\Model\Table;

use App\Model\Entity\Ticket;
use Cake\ORM\Query;
use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\Validation\Validator;

/**
 * Tickets Model
 *
 * @property \Cake\ORM\Association\BelongsTo $Departments
 * @property \Cake\ORM\Association\BelongsTo $TicketTypes
 * @property \Cake\ORM\Association\BelongsTo $TicketStatuses
 * @property \Cake\ORM\Association\BelongsTo $Users
 * @property \Cake\ORM\Association\BelongsTo $Projects
 * @property \Cake\ORM\Association\HasMany $Tasks
 * @property \Cake\ORM\Association\HasMany $TicketComments
 */
class TicketsTable extends Table
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

        $this->table('tickets');
        $this->displayField('name');
        $this->primaryKey('id');

        $this->addBehavior('Timestamp');

        $this->belongsTo('Departments', [
            'foreignKey' => 'department_id'
        ]);
        $this->belongsTo('Types', [
            'foreignKey' => 'ticket_type_id',
        	'className' => 'TicketTypes'
        ]);
        $this->belongsTo('Status', [
            'foreignKey' => 'ticket_status_id',
        	'className' =>'TicketStatus'
        ]);
        $this->belongsTo('Users', [
            'foreignKey' => 'user_id',
            'joinType' => 'INNER'
        ]);
        $this->belongsTo('Projects', [
            'foreignKey' => 'project_id',
            'joinType' => 'INNER'
        ]);
        $this->hasMany('Tasks', [
            'foreignKey' => 'ticket_id'
        ]);
        $this->hasMany('Comments', [
            'foreignKey' => 'ticket_id',
        	'className' => 'TicketComments'
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
            ->allowEmpty('description');

        return $validator;
    }

    /**
     * Returns a rules checker object that will be used for validating
     * application integrity.
     *
     * @param \Cake\ORM\RulesChecker $rules The rules object to be modified.
     * @return \Cake\ORM\RulesChecker
     */
    public function buildRules(RulesChecker $rules)
    {
        $rules->add($rules->existsIn(['departments_id'], 'Departments'));
        $rules->add($rules->existsIn(['ticket_type_id'], 'TicketTypes'));
        $rules->add($rules->existsIn(['ticket_status_id'], 'TicketStatuses'));
        $rules->add($rules->existsIn(['user_id'], 'Users'));
        $rules->add($rules->existsIn(['project_id'], 'Projects'));
        return $rules;
    }
}
