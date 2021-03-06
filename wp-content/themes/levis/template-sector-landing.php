<?php /* Template Name: Sector Landing Page */ ?>
<?php get_header() ?>
<?php if (have_posts()) : while (have_posts()) : the_post(); ?>
<!--main content-->
<main id="main">
	<!--row-->
<section id="service-grid" class="row">
<?php get_template_part('partials/content','service-page-title' );  ?>
<?php
$args = array(
	'post_type' => 'page',
	'post_status' => 'publish',
	'posts_per_page' => -1,
	'post_parent' => $post->ID,
	'orderby' => 'menu_order',
	'order' => 'ASC'
	);
	$query= query_posts($args);
	$numberposts = count($query);
	$count=1;
	if(have_posts()) :

		while (have_posts() ) : the_post(); 
			include( locate_template( 'partials/content-service-square-loop.php' ));
			$count++;
	endwhile;
	endif;
	wp_reset_query();
?>
</section>
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

<!--row-->
<div class="row">
	<!--box-->
<div class="small-12 medium-6 large-3 columns square box orange icon news"><div class="box-outer"><a href="#" class="box-link"><span class="box-content"><span class="vcenter-wrap"><span class="vcenter"><h3 class="news-icon">Our <strong>News</strong></h3></span></span></span><span class="box-overlay"></span></a></div></div>
<!--/box-->
	<!--box-->
<div class="small-12 medium-6 large-3 columns square box"><div class="box-outer"><a href="#" class="box-link"><span class="box-content"><span class="vcenter-wrap"><span class="vcenter"><h3>Our <strong>History</strong></h3></span></span></span><span class="box-overlay"></span><span class="box-image" style="background-image:url('<?php echo get_template_directory_uri(); ?>/images/our-history-bg.jpg');"></span></a></div></div>
<!--/box-->
	<!--box-->
<div class="small-12 medium-6 large-3 columns square box orange icon success"><div class="box-outer"><a href="#" class="box-link"><span class="box-content"><span class="vcenter-wrap"><span class="vcenter"><h3 class="success-icon">Our <strong>Success</strong></h3></span></span></span><span class="box-overlay"></span></a></div></div>
<!--/box-->
	<!--box-->
<div class="small-12 medium-6 large-3 columns square box"><div class="box-outer"><a href="#" class="box-link"><span class="box-content"><span class="vcenter-wrap"><span class="vcenter"><h3>Our <strong>Team</strong></h3></span></span></span><span class="box-overlay"></span><span class="box-image" style="background-image:url('<?php echo get_template_directory_uri(); ?>/images/team-bg.jpg');"></span></a></div></div>
<!--/row-->
</main>
<!--/main content-->
<?php endwhile ?>
<?php endif ?>
<?php get_footer() ?> 