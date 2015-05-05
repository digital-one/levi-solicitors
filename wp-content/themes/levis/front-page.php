<?php get_header() ?>
<?php if (have_posts()) : while (have_posts()) : the_post(); ?>
<!--contact nav-->
<nav id="contact-nav">
	<div class="row">
		<ul>
			<li><i class="fa fa-phone-square"></i><a href="tel:01132449931">0113 244 9931</a></li>
			<li><i class="fa fa-envelope"></i><a href="mailto:info@levisolicitors.co.uk">info@levisolicitors.co.uk</a></li>
			<li><i class="fa fa-check-square"></i><a href="#">Request a call-back</a></li>
			<li><i class="fa fa-comments"></i><a href="#">Chat to a member of our team</a></li>
	</ul>
	</div>
</nav>
<!--/contact nav-->
<!--main content-->
<main id="main">
	<!--row-->
<div class="row">
	<div id="intro">
<div class="small-12 large-6 columns square box padding-2x bottom-spaced"><div class="box-outer"><div class="box-content"><?php the_content() ?></div></div></div>
</div>
<div class="small-12 large-6 columns">
	<div class="row">
		<?php
		$page = get_post(6);
	list($src,$w,$h) = wp_get_attachment_image_src(get_field('page_header_image',$page->ID),'header-image'); ?>
<div class="small-12 medium-6 large-12 columns half-80-pct box top padding-2x"><div class="box-outer"><a href="<?php echo get_permalink($page->ID) ?>" title="<?php echo $page->post_title ?>" class="box-link"><span class="box-content padding-2x"><span class="vcenter-wrap"><span class="vcenter"><span class="label"><h2><?php echo style_heading($page->post_title) ?></h2></span><span class="caption"><?php echo strip_tags($page->post_content) ?></span></span></span></span><span class="box-overlay"></span><span class="box-image" style="background-image:url('<?php echo $src ?>');"></span></a></div></div>
<?php
	$page = get_post(8);
list($src,$w,$h) = wp_get_attachment_image_src(get_field('page_header_image',$page->ID),'header-image'); ?>
<div class="small-12 medium-6 large-12 columns bottom-spaced half-80-pct box bottom padding-2x"><div class="box-outer"><a href="<?php echo get_permalink($page->ID) ?>" title="<?php echo $page->post_title ?>" class="box-link"><span class="box-content padding-2x"><span class="vcenter-wrap"><span class="vcenter"><span class="label"><h2><?php echo style_heading($page->post_title) ?></h2></span><span class="caption"><?php echo strip_tags($page->post_content) ?></span></span></span></span><span class="box-overlay"></span><span class="box-image"  style="background-image:url('<?php echo $src ?>');"></span></a></div></div>
</div>
</div>
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
<?php get_sidebar('home') ?>
	<?php /*
	<div class="row">
	<!--box-->
<div class="small-12 medium-3 large-3 columns square box orange"><div class="box-outer"><a href="#" class="box-link"><span class="box-content"><span class="vcenter-wrap"><span class="vcenter"><h3 class="news-icon">Our <strong>News</strong></h3></span></span></span><span class="box-overlay"></span></a></div></div>
<!--/box-->
	<!--box-->
<div class="small-12 medium-3 large-3 columns square box"><div class="box-outer"><a href="#" class="box-link"><span class="box-content"><span class="vcenter-wrap"><span class="vcenter"><h3>Our <strong>History</strong></h3></span></span></span><span class="box-overlay"></span><span class="box-image" style="background-image:url('<?php echo get_template_directory_uri(); ?>/images/our-history-bg.jpg');"></span></a></div></div>
<!--/box-->
	<!--box-->
<div class="small-12 medium-3 large-3 columns square box orange"><div class="box-outer"><a href="#" class="box-link"><span class="box-content"><span class="vcenter-wrap"><span class="vcenter"><h3 class="success-icon">Our <strong>Success</strong></h3></span></span></span><span class="box-overlay"></span></a></div></div>
<!--/box-->
	<!--box-->
<div class="small-12 medium-3 large-3 columns square box"><div class="box-outer"><a href="#" class="box-link"><span class="box-content"><span class="vcenter-wrap"><span class="vcenter"><h3>Our <strong>Team</strong></h3></span></span></span><span class="box-overlay"></span><span class="box-image" style="background-image:url('<?php echo get_template_directory_uri(); ?>/images/team-bg.jpg');"></span></a></div></div>
<!--/box-->

<!--/row-->
*/ ?>
</main>
<!--/main content-->
<?php endwhile ?>
<?php endif ?>
<?php get_footer() ?> 