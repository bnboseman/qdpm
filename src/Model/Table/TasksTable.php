<?php
namespace App\Model\Table;

use App\Model\Entity\Task;
use Cake\ORM\Query;
use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\Validation\Validator;

/**
 * Tasks Model
 *
 * @property \Cake\ORM\Association\BelongsTo $Projects
 * @property \Cake\ORM\Association\BelongsTo $TaskStatus
 * @property \Cake\ORM\Association\BelongsTo $TaskPriority
 * @property \Cake\ORM\Association\BelongsTo $TaskTypes
 * @property \Cake\ORM\Association\BelongsTo $Labels
 * @property \Cake\ORM\Association\BelongsTo $Groups
 * @property \Cake\ORM\Association\BelongsTo $ProjectPhases
 * @property \Cake\ORM\Association\BelongsTo $Versions
 * @property \Cake\ORM\Association\BelongsTo $Tickets
 * @property \Cake\ORM\Association\BelongsTo $Discussions
 * @property \Cake\ORM\Association\HasMany $Comments
 */
class TasksTable extends Table
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

        $this->table('tasks');
        $this->displayField('name');
        $this->primaryKey('id');

        $this->addBehavior('Timestamp');

        $this->belongsTo('Projects', [
            'foreignKey' => 'project_id',
            'joinType' => 'INNER'
        ]);
        $this->belongsTo('TaskStatus', [
            'foreignKey' => 'task_status_id',
        ]);
        $this->belongsTo('TaskPriority', [
            'foreignKey' => 'task_priority_id',
        ]);
        $this->belongsTo('TaskTypes', [
            'foreignKey' => 'task_type_id',
        ]);
        $this->belongsTo('TaskLabels', [
            'foreignKey' => 'task_label_id',
        ]);
        $this->belongsTo('TaskGroups', [
            'foreignKey' => 'task_group_id',
        ]);
        $this->belongsTo('ProjectPhases', [
            'foreignKey' => 'project_phase_id'
        ]);
        $this->belongsTo('Versions', [
            'foreignKey' => 'versions_id'
        ]);
        $this->belongsTo('Tickets', [
            'foreignKey' => 'ticket_id'
        ]);
        $this->belongsTo('Discussions', [
            'foreignKey' => 'discussion_id'
        ]);
        $this->belongsTo('Creators', [
        		'foreignKey' => 'created_by',
        		'className' => 'Users'
        ]);
        $this->hasMany('TaskComments', [
            'foreignKey' => 'task_id',
        	'sort' => ['TaskComments.created' => 'Desc']
        ]);
        $this->hasMany('Attachments', [
        		'foreignKey' => 'bind_id',
        		'conditions' => ['Attachments.bind_type' => 'tasks']
        ]);
        
        $this->belongsToMany('AssignedTo', [
        	'className' => 'Users',
        	'targetForeignKey' => 'user_id'
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
            ->add('created_by', 'valid', ['rule' => 'numeric'])
            ->allowEmpty('created_by');

        $validator
            ->requirePresence('name', 'create')
            ->notEmpty('name');

        $validator
            ->allowEmpty('description');

        $validator
            ->allowEmpty('assigned_to');

        $validator
            ->add('estimated_time', 'valid', ['rule' => 'numeric'])
            ->allowEmpty('estimated_time');

        $validator
            ->add('due_date', 'valid', ['rule' => 'date'])
            ->allowEmpty('due_date');

        $validator
            ->add('closed_date', 'valid', ['rule' => 'date'])
            ->allowEmpty('closed_date');

        $validator
            ->add('start_date', 'valid', ['rule' => 'date'])
            ->allowEmpty('start_date');

        $validator
            ->add('progress', 'valid', ['rule' => 'numeric'])
            ->allowEmpty('progress');

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
        $rules->add($rules->existsIn(['project_id'], 'Projects'));
        $rules->add($rules->existsIn(['task_status_id'], 'Status'));
        $rules->add($rules->existsIn(['task_priority_id'], 'Priority'));
        $rules->add($rules->existsIn(['task_type_id'], 'Types'));
        $rules->add($rules->existsIn(['task_label_id'], 'Labels'));
        $rules->add($rules->existsIn(['task_groups_id'], 'Groups'));
        $rules->add($rules->existsIn(['project_phase_id'], 'ProjectPhases'));
        $rules->add($rules->existsIn(['versions_id'], 'Versions'));
        $rules->add($rules->existsIn(['ticket_id'], 'Tickets'));
        $rules->add($rules->existsIn(['discussion_id'], 'Discussions'));
        return $rules;
    }
}
