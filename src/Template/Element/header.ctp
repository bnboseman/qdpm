<header class="header black-bg">
<?php
use Cake\Core\Configure;
if ($this->request->session()->read('Auth.User.id') ) {
?>
<div class="sidebar-toggle-box">
    <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
</div>
<?php } ?>
<!--logo start-->
<a href="/" class="logo"><b><?= Configure::read('Site.name'); ?></b></a>
<!--logo end-->
<div class="nav notify-row" id="top_menu">

</div>
<div class="top-menu">
    <ul class="nav pull-right top-menu">
         <?php if ($this->request->session()->read('Auth.User.id') ) { ?>
        <li><a class="logout" href="/logout">Logout</a></li>
        <?php } ?>
    </ul>
</div>
</header>