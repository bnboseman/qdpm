<?php
namespace App\Model\Table;

use App\Model\Entity\ExtraFieldsList;
use Cake\ORM\Query;
use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\Validation\Validator;

/**
 * ExtraFieldsList Model
 *
 * @property \Cake\ORM\Association\BelongsTo $ExtraFields
 * @property \Cake\ORM\Association\BelongsTo $Binds
 */
class ExtraFieldsListTable extends Table
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

        $this->table('extra_fields_list');
        $this->displayField('id');
        $this->primaryKey('id');

        $this->belongsTo('ExtraFields', [
            'foreignKey' => 'extra_fields_id',
            'joinType' => 'INNER'
        ]);
        $this->belongsTo('Projects', [
            'ClassName' => 'Projects',
            'foreignKey' => 'bind_id',
            'joinType' => 'INNER',
            'conditions' => ['ExtraFieldsList.ExtraFields.bind_type' => 'Projects']
        ]);
        $this->belongsTo('Tickets', [
            'ClassName' => 'Tickets',
            'foreignKey' => 'bind_id',
            'joinType' => 'INNER',
            'conditions' => ['ExtraFieldsList.ExtraFields.bind_type' => 'Tickets']
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
            ->requirePresence('value', 'create')
            ->notEmpty('value');

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
        $rules->add($rules->existsIn(['extra_fields_id'], 'ExtraFields'));
        $rules->add($rules->existsIn(['bind_id'], 'Binds'));
        return $rules;
    }
}
