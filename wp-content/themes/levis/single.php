<?php get_header() ?>
<?php if (have_posts()) : while (have_posts()) : the_post(); ?>
	<div id="content" class="row">
<!--main content-->
<main id="main" role="main" class="small-12 medium-9 columns">
<div class="row">
<!--article-->
<div class="small-12 columns bottom-spaced box padding-2x">
	<div class="box-outer">
<div class="box-content">
<section class="section">
<h2><strong>How it all started</strong></h2>
<div class="row">
<div class="small-12 large-6 columns">
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut laoreet dolor justo, eget cursus mi rhoncus sit amet. Nullam non iaculis sem. Suspendisse ac elementum mi. Fusce consectetur bibendum faucibus. Mauris in ligula vehicula, posuere eros eget, tristique purus. Sed sit amet maximus metus. Nulla facilisi. Pellentesque porttitor est nulla, vel bibendum leo laoreet quis</p>
</div>
<div class="small-12 large-6 columns">
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut laoreet dolor justo, eget cursus mi rhoncus sit amet. Nullam non iaculis sem. Suspendisse ac elementum mi. Fusce consectetur bibendum faucibus. Mauris in ligula vehicula, posuere eros eget, tristique purus. Sed sit amet maximus metus. Nulla facilisi. Pellentesque porttitor est nulla, vel bibendum leo laoreet quis</p>
</div>
</div>
</section>
</div>
<section class="video">
<img src="<?php echo get_template_directory_uri(); ?>/images/video-placeholder.jpg" />
</section>
<div class="box-content no-bottom-padding">
<section class="section">
<h2><strong>Here for you</strong></h2>
<div class="row">
<div class="small-12 large-6 columns">
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut laoreet dolor justo, eget cursus mi rhoncus sit amet. Nullam non iaculis sem. Suspendisse ac elementum mi. Fusce consectetur bibendum faucibus. Mauris in ligula vehicula, posuere eros eget, tristique purus. Sed sit amet maximus metus. Nulla facilisi. Pellentesque porttitor est nulla, vel bibendum leo laoreet quis</p>
</div>
<div class="small-12 large-6 columns">
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut laoreet dolor justo, eget cursus mi rhoncus sit amet. Nullam non iaculis sem. Suspendisse ac elementum mi. Fusce consectetur bibendum faucibus. Mauris in ligula vehicula, posuere eros eget, tristique purus. Sed sit amet maximus metus. Nulla facilisi. Pellentesque porttitor est nulla, vel bibendum leo laoreet quis</p>
</div>
</div>
</section>
<section class="section">
<h2><strong>Our vision for the future</strong></h2>
<div class="row">
<div class="small-12 large-6 columns">
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut laoreet dolor justo, eget cursus mi rhoncus sit amet. Nullam non iaculis sem. Suspendisse ac elementum mi. Fusce consectetur bibendum faucibus. Mauris in ligula vehicula, posuere eros eget, tristique purus. Sed sit amet maximus metus. Nulla facilisi. Pellentesque porttitor est nulla, vel bibendum leo laoreet quis</p>
</div>
<div class="small-12 large-6 columns">
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut laoreet dolor justo, eget cursus mi rhoncus sit amet. Nullam non iaculis sem. Suspendisse ac elementum mi. Fusce consectetur bibendum faucibus. Mauris in ligula vehicula, posuere eros eget, tristique purus. Sed sit amet maximus metus. Nulla facilisi. Pellentesque porttitor est nulla, vel bibendum leo laoreet quis</p>
</div>
</div>

</section>
</div>
<footer class="box-content">
<a href="#" class="button">Get in touch</a>
</footer>
</div>


</div>
</div>
<!--/article-->

</main>
<!--/main content-->
<!--sidebar-->
<aside class="small-12 medium-3 columns">
<div class="row">
	<!--box-->
<div class="small-12 columns square box bottom-spaced"><div class="box-outer"><a href="#" class="box-link"><span class="box-content"><span class="vcenter-wrap"><span class="vcenter"><h3>Our <strong>Team</strong></h3></span></span></span><span class="box-overlay"></span><span class="box-image" style="background-image:url('<?php echo get_template_directory_uri(); ?>/images/team-bg.jpg');"></span></a></div></div>
<!--/box-->
	<!--box-->
<div class="small-12 columns square box orange bottom-spaced"><div class="box-outer"><a href="#" class="box-link"><span class="box-content"><span class="vcenter-wrap"><span class="vcenter"><h3 class="success-icon">Our <strong>Success</strong></h3></span></span></span><span class="box-overlay"></span></a></div></div>
<!--/box-->
	<!--box-->
<div class="small-12 columns square box"><div class="box-outer"><a href="#" class="box-link"><span class="box-content"><span class="vcenter-wrap"><span class="vcenter"><h3>Our <strong>History</strong></h3></span></span></span><span class="box-overlay"></span><span class="box-image" style="background-image:url('<?php echo get_template_directory_uri(); ?>/images/our-history-bg.jpg');"></span></a></div></div>
<!--/box-->
</div>
</aside>
<!--/sidebar-->
</div>
<!--/row-->
<!--row-->
<section id="contacts-bar" class="row">
<div class="small-12 columns box orange bottom-spaced">
	<div class="box-outer"><div class="box-content">
<nav><span>Speak to one of our solicitors</span><ul><li><i class="fa fa-phone-square"></i><a href="tel:01132449931">0113 244 9931</a></li><li><i class="fa fa-envelope"></i><a href="mailto:info@levisolicitors.co.uk">info@levisolicitors.co.uk</a></li><li><i class="fa fa-check-square"></i><a href="#">Request a call-back team</a></li></ul></nav>
</div>
</div>
</div>
</section>
<!--/row-->
<?php endwhile ?>
<?php endif ?>
<?php get_footer() ?> 