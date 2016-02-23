<?php
namespace App\Model\Table;

use App\Model\Entity\TaskComment;
use Cake\ORM\Query;
use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\Validation\Validator;

/**
 * TaskComments Model
 *
 * @property \Cake\ORM\Association\BelongsTo $Tasks
 * @property \Cake\ORM\Association\BelongsTo $TaskStatus
 * @property \Cake\ORM\Association\BelongsTo $TaskPriority
 */
class TaskCommentsTable extends Table
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

        $this->table('task_comments');
        $this->displayField('id');
        $this->primaryKey('id');

        $this->addBehavior('Timestamp');

        $this->belongsTo('Tasks', [
            'foreignKey' => 'task_id',
            'joinType' => 'INNER'
        ]);
        $this->belongsTo('TaskStatus', [
            'foreignKey' => 'task_status_id'
        ]);
        $this->belongsTo('TaskPriority', [
            'foreignKey' => 'task_priority_id'
        ]);
        $this->hasMany('Attachments', [
        		'foreignKey' => 'bind_id',
        		'conditions' => ['Attachments.bind_type' => 'tasksComments']
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
            ->add('due_date', 'valid', ['rule' => 'date'])
            ->allowEmpty('due_date');

        $validator
            ->add('worked_hours', 'valid', ['rule' => 'numeric'])
            ->allowEmpty('worked_hours');

        $validator
            ->allowEmpty('description');

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
        $rules->add($rules->existsIn(['task_id'], 'Tasks'));
        $rules->add($rules->existsIn(['task_status_id'], 'TaskStatus'));
        $rules->add($rules->existsIn(['task_priority_id'], 'TaskPriority'));
        return $rules;
    }
}
