<?php
namespace App\Model\Table;

use App\Model\Entity\User;
use Cake\ORM\Query;
use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\Validation\Validator;

/**
 * Users Model
 *
 * @property \Cake\ORM\Association\BelongsTo $UserGroups
 * @property \Cake\ORM\Association\HasMany $Departments
 * @property \Cake\ORM\Association\HasMany $DiscussionComments
 * @property \Cake\ORM\Association\HasMany $DiscussionReports
 * @property \Cake\ORM\Association\HasMany $Discussions
 * @property \Cake\ORM\Association\HasMany $Events
 * @property \Cake\ORM\Association\HasMany $ProjectComments
 * @property \Cake\ORM\Association\HasMany $ProjectReports
 * @property \Cake\ORM\Association\HasMany $TicketComments
 * @property \Cake\ORM\Association\HasMany $TicketReports
 * @property \Cake\ORM\Association\HasMany $Tickets
 * @property \Cake\ORM\Association\HasMany $UserReports
 */
class UsersTable extends Table
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

        $this->table('Users');
        $this->primaryKey('id');

        $this->belongsTo('UserGroups', [
            'foreignKey' => 'user_group_id'
        ]);
        $this->belongsTo('Department', [
            'foreignKey' => 'department_id',
        	'className' =>'Departments'
        ]);
        $this->belongsTo('Roles', [
        		'foreignKey' => 'role_id',
        		'className' =>'Roles'
        ]);
        $this->hasMany('DiscussionComments', [
            'foreignKey' => 'user_id'
        ]);
        $this->hasMany('DiscussionReports', [
            'foreignKey' => 'user_id'
        ]);
        $this->hasMany('Discussions', [
            'foreignKey' => 'user_id'
        ]);
        $this->hasMany('Events', [
            'foreignKey' => 'user_id'
        ]);
        $this->hasMany('ProjectComments', [
            'foreignKey' => 'user_id'
        ]);
        $this->hasMany('ProjectReports', [
            'foreignKey' => 'user_id'
        ]);
        $this->hasMany('TicketComments', [
            'foreignKey' => 'user_id'
        ]);
        $this->hasMany('TicketReports', [
            'foreignKey' => 'user_id'
        ]);
        $this->hasMany('Tickets', [
            'foreignKey' => 'user_id'
        ]);
        $this->hasMany('UserReports', [
            'foreignKey' => 'user_id'
        ]);
        $this->belongsTo('UserGroup', [
        		'className' => 'UserGroups'
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
            ->allowEmpty('photo');

        $validator
            ->add('email', 'valid', ['rule' => 'email'])
            ->requirePresence('email', 'create')
            ->notEmpty('email');

        $validator
            ->allowEmpty('culture');

        $validator
            ->requirePresence('password', 'create')
            ->notEmpty('password');

        $validator
            ->add('active', 'valid', ['rule' => 'boolean'])
            ->allowEmpty('active');

        $validator
            ->allowEmpty('skin');

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
        $rules->add($rules->isUnique(['email']));
        $rules->add($rules->existsIn(['user_group_id'], 'UserGroups'));
        return $rules;
    }
}
