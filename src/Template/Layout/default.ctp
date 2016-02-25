<!DOCTYPE html>
<html lang="en">
    <head>
        <?= $this->Html->charset() ?>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>
            <?= $this->fetch('title') ?>
        </title>
        <?= $this->Html->meta('icon') ?>
        <?= $this->Html->css('bootstrap.css') ?>
        <?= $this->Html->css('/font-awesome/css/font-awesome.css') ?>
        <!-- Custom Styles -->
        <?= $this->Html->css('style.css') ?>
        <?= $this->fetch('meta') ?>
        <?= $this->fetch('css') ?>
        <?= $this->fetch('script') ?>
    </head>
    <body ng-app="TaskManager">
    <base href="/">
    <?= $this->element('header'); ?>
    
    <div class="container-fluid">
    <?php if ($this->request->session()->read('Auth.User.id') ) { ?>
    <div class="col-sm-2">
    		<?= $this->element('sidebar'); ?>
    </div>
    
     
     <div class="col-sm-10">
     <?php } else { ?>
     <div class="col-sm-12">
      <?php } ?>
     	<?= $this->Flash->render() ?>
        <?= $this->fetch('content'); ?>
     </div>
    
     </div>
                        	
                        
        <?= $this->element('footer'); ?>

        <?= $this->Html->script('jquery-2.2.1.min.js'); ?>
        <?= $this->Html->script('bootstrap.min.js'); ?>
        
        <!--common script for all pages-->
        <?= $this->Html->script('common-scripts.js'); ?>
        <?= $this->Html->script('https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.2/moment.min.js'); ?>
        <!-- Angular Scrips -->
        <?= $this->Html->script('angular.min.js'); ?>
        <?= $this->Html->script('angular-route.min.js'); ?>
        <?= $this->Html->script('angular-moment.min.js'); ?>
        <?= $this->Html->script('dirPagination.js'); ?>
        <?= $this->Html->script('angular-animate.min.js'); ?>
        <?= $this->Html->script('ui-bootstrap-tpls-1.1.2.min.js'); ?>
        <?= $this->Html->script('tinymce.js'); ?>
        <?= $this->Html->script('controllers/controllers.js'); ?>
        <?= $this->Html->script('script.js'); ?>
        
    </body>
</html>