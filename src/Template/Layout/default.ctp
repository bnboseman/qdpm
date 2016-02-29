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

        <?= $this->Html->script('bower_components/jquery/dist/jquery.min.js'); ?>
        <?= $this->Html->script('bower_components/bootstrap/dist/js/bootstrap.min.js'); ?>

        <!--common script for all pages-->
        <?= $this->Html->script('common-scripts.js'); ?>
        <?= $this->Html->script('bower_components/moment/min/moment.min.js'); ?>
        <!-- Angular Scrips -->
        <?= $this->Html->script('bower_components/angular/angular.min.js'); ?>
        <?= $this->Html->script('bower_components/angular-route/angular-route.min.js'); ?>
        <?= $this->Html->script('bower_components/angular-moment/angular-moment.min.js'); ?>
        <?= $this->Html->script('bower_components/angular-utils-pagination/dirPagination.js'); ?>
        <?= $this->Html->script('bower_components/angular-animate/angular-animate.min.js'); ?>
        <?= $this->Html->script('bower_components/angular-bootstrap/ui-bootstrap-tpls.min.js'); ?>
        <?= $this->Html->script('bower_components/tinymce-dist/tinymce.min.js'); ?>
        <?= $this->Html->script('bower_components/angular-ui-tinymce/dist/tinymce.min.js'); ?>
        <?= $this->Html->script('bower_components/angular-bootstrap/ui-bootstrap-tpls.min.js'); ?>
        <?= $this->Html->script('controllers/controllers.js'); ?>
        <?= $this->Html->script('script.js'); ?>

    </body>
</html>