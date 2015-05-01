<?php get_header() ?>
<?php if (have_posts()) : while (have_posts()) : the_post(); ?>
	<div id="content" class="row">
<!--main content-->
<main id="main" role="main" class="small-12 medium-9 columns">
<div class="row">
<!--header box-->
<div class="small-12 columns bottom-spaced box padding-2x three-quarter">

<div class="box-outer" style="background-image:url('<?php echo get_template_directory_uri(); ?>/images/team-header-bg.jpg');">
	<div class="box-content">
		<span class="vcenter-wrap">
			<span class="vcenter"><h1>OUR <strong>TEAM</strong></h1><a href="#" class="button">Get in touch</a></span>
		</span>
	</div>
	</div>
</div>
<!--/header box-->
<div class="small-12 columns bottom-spaced box padding-2x">
	<div class="box-outer">
<div class="box-content">
<section class="section">
<ul class="small-block-grid-1 large-block-grid-2">
<?php
$args = array(
	'post_type'=>'cpt_team',
	'post_status' => 'publish',
	'posts_per_page' => -1,
	'orderby' => 'menu_order',
	'order' => 'ASC'
	);
	query_posts($args);
	if(have_posts()) :
		while (have_posts() ) : the_post(); 
			 get_template_part('partials/content','team-loop' ); 
endwhile;
endif;
wp_reset_query();
 ?>
</ul>
</section>
</div>
</div>
</div>
</main>
<!--/main content-->
<!--sidebar-->
<aside class="small-12 medium-3 columns">
<div class="row">
	<!--box-->
<div class="small-12 columns square box bottom-spaced"><div class="box-outer"><a href="#" class="box-link"><span class="box-content"><span class="vcenter-wrap"><span class="vcenter"><h3>For <strong>You</strong></h3></span></span></span><span class="box-overlay"></span><span class="box-image" style="background-image:url('<?php echo get_template_directory_uri(); ?>/images/for-you-square-bg.jpg');"></span></a></div></div>
<!--/box-->
	<!--box-->
<div class="small-12 columns square box orange bottom-spaced"><div class="box-outer"><a href="#" class="box-link"><span class="box-content"><span class="vcenter-wrap"><span class="vcenter"><h3 class="success-icon">Our <strong>Success</strong></h3></span></span></span><span class="box-overlay"></span></a></div></div>
<!--/box-->
	<!--box-->
<div class="small-12 columns square box"><div class="box-outer"><a href="#" class="box-link"><span class="box-content"><span class="vcenter-wrap"><span class="vcenter"><h3>For <strong>Business</strong></h3></span></span></span><span class="box-overlay"></span><span class="box-image" style="background-image:url('<?php echo get_template_directory_uri(); ?>/images/for-business-square-bg.jpg');"></span></a></div></div>
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