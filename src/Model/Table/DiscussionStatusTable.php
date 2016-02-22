<?php
namespace App\Model\Table;

use App\Model\Entity\DiscussionStatus;
use Cake\ORM\Query;
use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\Validation\Validator;

/**
 * DiscussionStatus Model
 *
 * @property \Cake\ORM\Association\HasMany $DiscussionComments
 * @property \Cake\ORM\Association\HasMany $DiscussionReports
 * @property \Cake\ORM\Association\HasMany $Discussions
 */
class DiscussionStatusTable extends Table
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

        $this->table('discussion_status');
        $this->displayField('name');
        $this->primaryKey('id');

        $this->hasMany('DiscussionComments', [
            'foreignKey' => 'discussion_status_id'
        ]);
        $this->hasMany('DiscussionReports', [
            'foreignKey' => 'discussion_status_id'
        ]);
        $this->hasMany('Discussions', [
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
            ->allowEmpty('name');

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
