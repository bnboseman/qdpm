<?php
namespace App\Model\Table;

use App\Model\Entity\ProjectReport;
use Cake\ORM\Query;
use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\Validation\Validator;

/**
 * ProjectReports Model
 *
 * @property \Cake\ORM\Association\BelongsTo $Users
 * @property \Cake\ORM\Association\BelongsTo $Projects
 * @property \Cake\ORM\Association\BelongsTo $ProjectTypes
 * @property \Cake\ORM\Association\BelongsTo $ProjectStatuses
 */
class ProjectReportsTable extends Table
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

        $this->table('project_reports');
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
            ->add('in_team', 'valid', ['rule' => 'numeric'])
            ->allowEmpty('in_team');

        $validator
            ->add('sort_order', 'valid', ['rule' => 'numeric'])
            ->allowEmpty('sort_order');

        $validator
            ->add('display_in_menu', 'valid', ['rule' => 'boolean'])
            ->allowEmpty('display_in_menu');

        $validator
            ->add('visible_on_home', 'valid', ['rule' => 'boolean'])
            ->allowEmpty('visible_on_home');

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
        return $rules;
    }
}
