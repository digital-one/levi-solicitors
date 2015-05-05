<?php get_header() ?>
<?php if (have_posts()) : while (have_posts()) : the_post(); ?>
	<div id="content" class="row">
<!--main content-->
<main id="main" role="main" class="small-12 medium-9 columns">
<div class="row">
<?php get_template_part('partials/content','page-title' );  ?>
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
<?php get_sidebar('page') ?>
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