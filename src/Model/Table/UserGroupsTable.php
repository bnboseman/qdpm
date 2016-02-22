<?php
namespace App\Model\Table;

use App\Model\Entity\UserGroup;
use Cake\ORM\Query;
use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\Validation\Validator;

/**
 * UserGroups Model
 *
 * @property \Cake\ORM\Association\HasMany $Users
 */
class UserGroupsTable extends Table
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

        $this->table('user_groups');
        $this->displayField('name');
        $this->primaryKey('id');

        $this->hasMany('Users', [
            'foreignKey' => 'user_group_id'
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
            ->add('allow_view_all', 'valid', ['rule' => 'boolean'])
            ->allowEmpty('allow_view_all');

        $validator
            ->add('allow_manage_projects', 'valid', ['rule' => 'boolean'])
            ->allowEmpty('allow_manage_projects');

        $validator
            ->add('allow_manage_tasks', 'valid', ['rule' => 'boolean'])
            ->allowEmpty('allow_manage_tasks');

        $validator
            ->add('allow_manage_tickets', 'valid', ['rule' => 'boolean'])
            ->allowEmpty('allow_manage_tickets');

        $validator
            ->add('allow_manage_users', 'valid', ['rule' => 'boolean'])
            ->allowEmpty('allow_manage_users');

        $validator
            ->add('allow_manage_configuration', 'valid', ['rule' => 'boolean'])
            ->allowEmpty('allow_manage_configuration');

        $validator
            ->add('allow_manage_task_viewonly', 'valid', ['rule' => 'boolean'])
            ->allowEmpty('allow_manage_task_viewonly');

        $validator
            ->add('allow_manage_discussions', 'valid', ['rule' => 'boolean'])
            ->allowEmpty('allow_manage_discussions');

        $validator
            ->add('allow_manage_discussion_viewonly', 'valid', ['rule' => 'boolean'])
            ->allowEmpty('allow_manage_discussion_viewonly');

        return $validator;
    }
}
