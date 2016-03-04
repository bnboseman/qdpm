<?php
namespace App\View\Helper;

use Cake\View\Helper;
use Cake\View\View;

/**
 * Angular helper
 */
class AngularHelper extends Helper
{

    /**
     * Default configuration.
     *
     * @var array
     */
    protected $_defaultConfig = [];
    public $helpers = ['Html'];

    public function includeFilesFromDirectory( $directory, $type=null ) {
    	$files = scandir(WWW_ROOT . 'js' . DS . $directory);
        foreach($files as $file) {
        	if (strlen($file) > 3 && strtolower(substr($file, -3)) == '.js') {
        		echo $this->Html->script($directory . DS . $file);
        	}
        }
    }
}
