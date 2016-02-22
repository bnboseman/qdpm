<?php
namespace App\Model\Table;

use App\Model\Entity\ExtraField;
use Cake\ORM\Query;
use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\Validation\Validator;

/**
 * ExtraFields Model
 *
 * @property \Cake\ORM\Association\HasMany $ExtraFieldList
 */
class ExtraFieldsTable extends Table
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

        $this->table('extra_fields');
        $this->displayField('name');
        $this->primaryKey('id');

        $this->hasMany('ExtraFieldList', [
            'foreignKey' => 'extra_field_id'
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
            ->requirePresence('bind_type', 'create')
            ->notEmpty('bind_type');

        $validator
            ->allowEmpty('type');

        $validator
            ->add('sort_order', 'valid', ['rule' => 'numeric'])
            ->allowEmpty('sort_order');

        $validator
            ->add('active', 'valid', ['rule' => 'boolean'])
            ->allowEmpty('active');

        $validator
            ->add('display_in_list', 'valid', ['rule' => 'boolean'])
            ->allowEmpty('display_in_list');

        return $validator;
    }
}
