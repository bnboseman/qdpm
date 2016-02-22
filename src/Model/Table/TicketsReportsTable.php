<?php
namespace App\Model\Table;

use App\Model\Entity\TicketsReport;
use Cake\ORM\Query;
use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\Validation\Validator;

/**
 * TicketsReports Model
 *
 * @property \Cake\ORM\Association\BelongsTo $Users
 * @property \Cake\ORM\Association\BelongsTo $Projects
 * @property \Cake\ORM\Association\BelongsTo $ProjectsTypes
 * @property \Cake\ORM\Association\BelongsTo $ProjectsStatus
 * @property \Cake\ORM\Association\BelongsTo $Departments
 * @property \Cake\ORM\Association\BelongsTo $TicketsTypes
 * @property \Cake\ORM\Association\BelongsTo $TicketsStatus
 */
class TicketsReportsTable extends Table
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

        $this->table('tickets_reports');
        $this->displayField('name');
        $this->primaryKey('id');

        $this->belongsTo('Users', [
            'foreignKey' => 'users_id',
            'joinType' => 'INNER'
        ]);
        $this->belongsTo('Projects', [
            'foreignKey' => 'projects_id'
        ]);
        $this->belongsTo('ProjectsTypes', [
            'foreignKey' => 'projects_type_id'
        ]);
        $this->belongsTo('ProjectsStatus', [
            'foreignKey' => 'projects_status_id'
        ]);
        $this->belongsTo('Departments', [
            'foreignKey' => 'departments_id'
        ]);
        $this->belongsTo('TicketsTypes', [
            'foreignKey' => 'tickets_types_id'
        ]);
        $this->belongsTo('TicketsStatus', [
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
            ->add('display_on_home', 'valid', ['rule' => 'boolean'])
            ->allowEmpty('display_on_home');

        $validator
            ->add('sort_order', 'valid', ['rule' => 'numeric'])
            ->allowEmpty('sort_order');

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
        $rules->add($rules->existsIn(['users_id'], 'Users'));
        $rules->add($rules->existsIn(['projects_id'], 'Projects'));
        $rules->add($rules->existsIn(['projects_type_id'], 'ProjectsTypes'));
        $rules->add($rules->existsIn(['projects_status_id'], 'ProjectsStatus'));
        $rules->add($rules->existsIn(['departments_id'], 'Departments'));
        $rules->add($rules->existsIn(['tickets_types_id'], 'TicketsTypes'));
        $rules->add($rules->existsIn(['tickets_status_id'], 'TicketsStatus'));
        return $rules;
    }
}
