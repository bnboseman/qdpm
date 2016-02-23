<div class="login">
<div class="col-md-6 col-sx-12">
    <p>
    <?= __('Welcome to the New Hope Fertility Center Intranet. If you are a New Hope Fertility Center staff
    member with a registered user name and password, please login here. If you are not a New Hope
    Fertility Center staff member and wish to learn more about us, please visit us at '); ?>
    <?= $this->Html->link('http://newhopefertility.com', 'http://newhopefertility.com'); ?>
    </p>
</div>

<div class="col-md-6 col-sx-12">

<?= $this->Form->create() ?>
    <fieldset>
        <legend><?= __('Please enter your username and password') ?></legend>
        <?= $this->Form->input('username') ?>
        <?= $this->Form->input('password') ?>
    </fieldset>
<?= $this->Form->button(__('Login')); ?>
<?= $this->Form->end() ?>
</div>
</div>
<?php $this->assign('title', 'New Hope Fertility Intranet - Login'); ?>
