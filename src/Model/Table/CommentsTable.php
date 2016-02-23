<?php
namespace App\Model\Table;

use App\Model\Entity\Comment;
use Cake\ORM\Query;
use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\Validation\Validator;

/**
 * Comments Model
 *
 * @property \Cake\ORM\Association\BelongsTo $Tasks
 * @property \Cake\ORM\Association\BelongsTo $Users
 * @property \Cake\ORM\Association\BelongsTo $Status
 * @property \Cake\ORM\Association\BelongsTo $Priorties
 */
class CommentsTable extends Table
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

        $this->table('comments');
        $this->displayField('id');
        $this->primaryKey('id');

        $this->addBehavior('Timestamp');

        $this->belongsTo('Tasks', [
            'foreignKey' => 'bind_id',
            'joinType' => 'INNER'
        ]);
        $this->belongsTo('Users', [
            'foreignKey' => 'user_id'
        ]);
        $this->belongsTo('Status', [
            'foreignKey' => 'status_id'
        ]);
        $this->belongsTo('Priorties', [
            'foreignKey' => 'priority_id'
        ]);
        $this->hasMany('Attachments', [
        		'foreignKey' => 'bind_id',
        		'conditions' => ['Attachments.bind_type' => 'comments']
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
            ->allowEmpty('bind_type');

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
        $rules->add($rules->existsIn(['bind_id'], 'Tasks'));
        $rules->add($rules->existsIn(['user_id'], 'Users'));
        $rules->add($rules->existsIn(['status_id'], 'Status'));
        $rules->add($rules->existsIn(['priority_id'], 'Priorties'));
        return $rules;
    }
}
