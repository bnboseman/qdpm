<?php
namespace App\Model\Table;

use App\Model\Entity\UserReport;
use Cake\ORM\Query;
use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\Validation\Validator;

/**
 * UserReports Model
 *
 * @property \Cake\ORM\Association\BelongsTo $Users
 * @property \Cake\ORM\Association\BelongsTo $Projects
 * @property \Cake\ORM\Association\BelongsTo $ProjectTypes
 * @property \Cake\ORM\Association\BelongsTo $ProjectStatuses
 * @property \Cake\ORM\Association\BelongsTo $TaskStatuses
 * @property \Cake\ORM\Association\BelongsTo $TaskTypes
 * @property \Cake\ORM\Association\BelongsTo $TaskLabels
 */
class UserReportsTable extends Table
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

        $this->table('user_reports');
        $this->displayField('name');
        $this->primaryKey('id');

        $this->belongsTo('Users', [
            'foreignKey' => 'user_id',
            'joinType' => 'INNER'
        ]);
        $this->belongsTo('Projects', [
            'foreignKey' => 'project_id'
        ]);
        $this->belongsTo('ProjectTypes', [
            'foreignKey' => 'project_type_id'
        ]);
        $this->belongsTo('ProjectStatuses', [
            'foreignKey' => 'project_status_id'
        ]);
        $this->belongsTo('TaskStatuses', [
            'foreignKey' => 'task_status_id'
        ]);
        $this->belongsTo('TaskTypes', [
            'foreignKey' => 'task_type_id'
        ]);
        $this->belongsTo('TaskLabels', [
            'foreignKey' => 'task_label_id'
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
            ->allowEmpty('assigned_to');

        $validator
            ->add('due_date_from', 'valid', ['rule' => 'date'])
            ->allowEmpty('due_date_from');

        $validator
            ->add('due_date_to', 'valid', ['rule' => 'date'])
            ->allowEmpty('due_date_to');

        $validator
            ->add('created_from', 'valid', ['rule' => 'date'])
            ->allowEmpty('created_from');

        $validator
            ->add('created_to', 'valid', ['rule' => 'date'])
            ->allowEmpty('created_to');

        $validator
            ->add('closed_from', 'valid', ['rule' => 'date'])
            ->allowEmpty('closed_from');

        $validator
            ->add('closed_to', 'valid', ['rule' => 'date'])
            ->allowEmpty('closed_to');

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
        $rules->add($rules->existsIn(['user_id'], 'Users'));
        $rules->add($rules->existsIn(['project_id'], 'Projects'));
        $rules->add($rules->existsIn(['project_type_id'], 'ProjectTypes'));
        $rules->add($rules->existsIn(['project_status_id'], 'ProjectStatuses'));
        $rules->add($rules->existsIn(['task_status_id'], 'TaskStatuses'));
        $rules->add($rules->existsIn(['task_type_id'], 'TaskTypes'));
        $rules->add($rules->existsIn(['task_label_id'], 'TaskLabels'));
        return $rules;
    }
}
