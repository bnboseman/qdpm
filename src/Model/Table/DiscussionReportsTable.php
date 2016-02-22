<?php
namespace App\Model\Table;

use App\Model\Entity\DiscussionReport;
use Cake\ORM\Query;
use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\Validation\Validator;

/**
 * DiscussionReports Model
 *
 * @property \Cake\ORM\Association\BelongsTo $Users
 * @property \Cake\ORM\Association\BelongsTo $Projects
 * @property \Cake\ORM\Association\BelongsTo $ProjectTypes
 * @property \Cake\ORM\Association\BelongsTo $ProjectStatuses
 * @property \Cake\ORM\Association\BelongsTo $DiscussionStatuses
 */
class DiscussionReportsTable extends Table
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

        $this->table('discussion_reports');
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
        $this->belongsTo('DiscussionStatuses', [
            'foreignKey' => 'discussion_status_id'
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
        $rules->add($rules->existsIn(['user_id'], 'Users'));
        $rules->add($rules->existsIn(['project_id'], 'Projects'));
        $rules->add($rules->existsIn(['project_type_id'], 'ProjectTypes'));
        $rules->add($rules->existsIn(['project_status_id'], 'ProjectStatuses'));
        $rules->add($rules->existsIn(['discussion_status_id'], 'DiscussionStatuses'));
        return $rules;
    }
}
