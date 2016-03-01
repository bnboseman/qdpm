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
            ->integer('id')
            ->allowEmpty('id', 'create');

        $validator
            ->requirePresence('name', 'create')
            ->notEmpty('name');

        $validator
            ->boolean('allow_view_all')
            ->allowEmpty('allow_view_all');

        $validator
            ->integer('allow_manage_projects')
            ->allowEmpty('allow_manage_projects');

        $validator
            ->boolean('allow_manage_tasks')
            ->allowEmpty('allow_manage_tasks');

        $validator
            ->boolean('allow_manage_tickets')
            ->allowEmpty('allow_manage_tickets');

        $validator
            ->boolean('allow_manage_users')
            ->allowEmpty('allow_manage_users');

        $validator
            ->boolean('allow_manage_configuration')
            ->allowEmpty('allow_manage_configuration');

        $validator
            ->boolean('allow_manage_task_viewonly')
            ->allowEmpty('allow_manage_task_viewonly');

        $validator
            ->boolean('allow_manage_discussions')
            ->allowEmpty('allow_manage_discussions');

        $validator
            ->boolean('allow_manage_discussion_viewonly')
            ->allowEmpty('allow_manage_discussion_viewonly');

        return $validator;
    }
}
