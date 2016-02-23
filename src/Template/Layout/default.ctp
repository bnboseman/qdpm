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
        <?= $this->Html->css('zabuto_calendar.css') ?>
        <?= $this->Html->css('/js/gritter/css/jquery.gritter.css') ?>
        <?= $this->Html->css('/lineicons/style.css'); ?>
        <!-- Custom Styles -->
        <?= $this->Html->css('style.css') ?>
        <?= $this->Html->css('style-responsive.css') ?>
        <?= $this->Html->script('chart-master/Chart.js')?>
        <?= $this->fetch('meta') ?>
        <?= $this->fetch('css') ?>
        <?= $this->fetch('script') ?>
    </head>
    <body>
        <?= $this->Flash->render() ?>
        <section id="container" >
            <!-- TOP BAR CONTENT & NOTIFICATIONS -->
            <!--header start-->
            <?= $this->element('header'); ?>   
            <!--header end-->
            <!-- MAIN SIDEBAR MENU -->
            
            <?= $this->element('sidebar'); ?>
            <!-- MAIN CONTENT  -->
            <!--main content start-->
            <section id="main-content">
                <section class="wrapper">
                    <div class="row">
                        <div class="col-md-12">
                            <?= $this->fetch('content'); ?>
                        </div>
                    </div>
                    <!--/row -->
                </section>
            </section>
            <!--main content end-->
            <!--footer start-->
            <?= $this->element('footer'); ?>
            <!--footer end-->
        </section>
        <footer>
        </footer>
        <?= $this->Html->script('jquery.js'); ?>
        <?= $this->Html->script('jquery-1.8.3.min.js'); ?>
        <?= $this->Html->script('bootstrap.min.js'); ?>
        <?= $this->Html->script('jquery.dcjqaccordion.2.7.js'); ?>
        <?= $this->Html->script('jquery.scrollTo.min.js'); ?>
        <?= $this->Html->script('jquery.nicescroll.js'); ?>
        <?= $this->Html->script('jquery.sparkline.js'); ?>
        <!--common script for all pages-->
        <?= $this->Html->script('common-scripts.js'); ?>
        <?= $this->Html->script('gritter/js/jquery.gritter.js'); ?>
        <?= $this->Html->script('gritter-conf.js'); ?>
        <!--script for this page-->
        <?= $this->Html->script('sparkline-chart.js'); ?>
        <?= $this->Html->script('zabuto_calendar.js'); ?>
        <script type="application/javascript">
            $(document).ready(function () {
                $("#date-popover").popover({html: true, trigger: "manual"});
                $("#date-popover").hide();
                $("#date-popover").click(function (e) {
                    $(this).hide();
                });
            
                $("#my-calendar").zabuto_calendar({
                    action: function () {
                        return myDateFunction(this.id, false);
                    },
                    action_nav: function () {
                        return myNavFunction(this.id);
                    },
                    ajax: {
                        url: "show_data.php?action=1",
                        modal: true
                    },
                    legend: [
                        {type: "text", label: "Special event", badge: "00"},
                        {type: "block", label: "Regular event", }
                    ]
                });
            });
            
            
            function myNavFunction(id) {
                $("#date-popover").hide();
                var nav = $("#" + id).data("navigation");
                var to = $("#" + id).data("to");
                console.log('nav ' + nav + ' to: ' + to.month + '/' + to.year);
            }
        </script>
    </body>
</html>