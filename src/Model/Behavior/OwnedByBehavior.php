<?php
namespace App\Model\Behavior;

use Cake\ORM\Behavior;
use Cake\ORM\Table;

/**
 * OwnedBy behavior
 */
class OwnedByBehavior extends Behavior
{

    /**
     * Default configuration.
     *
     * @var array
     */
    protected $_defaultConfig = ['field' => 'user_id'];
    
    public function initialize(array $config)
    {
    	// Some initialization code here
    }
    
    public function isOwner($value,$entity)
    {
    	$config = $this->config();
    	if ($entity->get($config['field']) == $value) {
    		return true;
    	}
    	
    	return false;
    }
}
