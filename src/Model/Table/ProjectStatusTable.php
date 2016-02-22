<?php
namespace App\Model\Table;

use App\Model\Entity\ProjectStatus;
use Cake\ORM\Query;
use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\Validation\Validator;

/**
 * ProjectStatus Model
 *
 * @property \Cake\ORM\Association\HasMany $DiscussionReports
 * @property \Cake\ORM\Association\HasMany $ProjectReports
 * @property \Cake\ORM\Association\HasMany $Projects
 * @property \Cake\ORM\Association\HasMany $TicketReports
 * @property \Cake\ORM\Association\HasMany $UserReports
 */
class ProjectStatusTable extends Table
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

        $this->table('project_status');
        $this->displayField('name');
        $this->primaryKey('id');

        $this->hasMany('DiscussionReports', [
            'foreignKey' => 'project_status_id'
        ]);
        $this->hasMany('ProjectReports', [
            'foreignKey' => 'project_status_id'
        ]);
        $this->hasMany('Projects', [
            'foreignKey' => 'project_status_id'
        ]);
        $this->hasMany('TicketReports', [
            'foreignKey' => 'project_status_id'
        ]);
        $this->hasMany('UserReports', [
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
            ->add('sort_order', 'valid', ['rule' => 'numeric'])
            ->allowEmpty('sort_order');

        $validator
            ->add('default_value', 'valid', ['rule' => 'boolean'])
            ->allowEmpty('default_value');

        $validator
            ->add('active', 'valid', ['rule' => 'boolean'])
            ->allowEmpty('active');

        return $validator;
    }
}
