<?php
namespace App\Model\Table;

use App\Model\Entity\Project;
use Cake\ORM\Query;
use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\Validation\Validator;

/**
 * Projects Model
 *
 * @property \Cake\ORM\Association\BelongsTo $ProjectStatuses
 * @property \Cake\ORM\Association\BelongsTo $ProjectTypes
 * @property \Cake\ORM\Association\HasMany $DiscussionReports
 * @property \Cake\ORM\Association\HasMany $Discussions
 * @property \Cake\ORM\Association\HasMany $ProjectComments
 * @property \Cake\ORM\Association\HasMany $ProjectPhases
 * @property \Cake\ORM\Association\HasMany $ProjectReports
 * @property \Cake\ORM\Association\HasMany $TaskGroups
 * @property \Cake\ORM\Association\HasMany $Tasks
 * @property \Cake\ORM\Association\HasMany $TicketReports
 * @property \Cake\ORM\Association\HasMany $Tickets
 * @property \Cake\ORM\Association\HasMany $UserReports
 * @property \Cake\ORM\Association\HasMany $Versions
 */
class ProjectsTable extends Table
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

        $this->table('projects');
        $this->displayField('name');
        $this->primaryKey('id');

        $this->addBehavior('Timestamp');

        $this->addBehavior('OwnedBy', ['field' => 'created_by']);

        $this->belongsTo('ProjectStatus', [
            'foreignKey' => 'project_status_id'
        ]);
        $this->belongsTo('Creator', [
        		'foreignKey' => 'created_by',
        		'className' => 'Users'
        ]);
        $this->belongsTo('ProjectTypes', [
            'foreignKey' => 'project_types_id'
        ]);
        $this->hasMany('DiscussionReports', [
            'foreignKey' => 'project_id'
        ]);
        $this->hasMany('Discussions', [
            'foreignKey' => 'project_id'
        ]);
        $this->hasMany('Attachments', [
        		'foreignKey' => 'bind_id',
        		'conditions' => ['Attachments.bind_type' => 'projects']
        ]);
        $this->hasMany('ProjectComments', [
            'foreignKey' => 'project_id',
        	'className' => 'ProjectComments'
        ]);
        $this->hasOne('ProjectPhases', [
            'foreignKey' => 'project_id',
        ]);
        $this->hasMany('Reports', [
            'foreignKey' => 'project_id',
        	'className' => 'ProjectReports'
        ]);
        $this->hasMany('TaskGroups', [
            'foreignKey' => 'project_id'
        ]);
        $this->hasMany('Tasks', [
            'foreignKey' => 'project_id'
        ]);
        $this->hasMany('TicketReports', [
            'foreignKey' => 'project_id'
        ]);
        $this->hasMany('Tickets', [
            'foreignKey' => 'project_id'
        ]);
        $this->hasMany('UserReports', [
            'foreignKey' => 'project_id'
        ]);
        $this->hasMany('Versions', [
            'foreignKey' => 'project_id'
        ]);
        $this->belongsToMany('Team', [
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
            ->allowEmpty('team');

        $validator
            ->allowEmpty('order_task_by');

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
        $rules->add($rules->existsIn(['project_status_id'], 'ProjectStatuses'));
        $rules->add($rules->existsIn(['project_types_id'], 'ProjectTypes'));
        return $rules;
    }
}
