<?php get_header() ?>
	<div id="content" class="row">
<!--main content-->
<main id="main" role="main" class="small-12 medium-9 columns">
<div class="row">
<!--header box-->
<div class="small-12 columns bottom-spaced box padding-2x three-quarter">
<?php
$page = get_post(46);
list($src,$w,$h) = wp_get_attachment_image_src(get_field('page_header_image',$page->ID),'header-image');
?>
<div class="box-outer" style="background-image:url('<?php echo $src ?>');">
	<div class="box-content">
		<span class="vcenter-wrap">
			<span class="vcenter">
<?php
$title = $page->post_title;
if (is_category()): 
	$title =  single_cat_title();
elseif (is_tag()):
	$title = single_tag_title();
 elseif (is_day()):
	$title = the_time('l, F j, Y'); 
elseif (is_month()):
	$title = the_time('F Y'); 
elseif (is_year()):
	$title = the_time('Y');
endif;
?>
<h1><?php echo style_heading(get_queried_object()->name) ?></h1><a href="<?php echo get_permalink(14) ?>" class="button">Get in touch</a></span>
		</span>
	</div>
	</div>
</div>
<!--/header box-->
<!--article-->
<div class="small-12 columns bottom-spaced box padding-2x end">
	<div class="box-outer">
<div class="box-content">
<section id="posts" class="section">
	<div class="posts">
<?php
	$paged = (get_query_var('paged')) ? get_query_var('paged') : 1;

	//$paged = (get_query_var('page')) ? get_query_var('page') : 1;
	/*
	$args=array(
		'post_type' => 'cpt_news',
		'post_status' => 'publish',
		'posts_per_page' => 10,
		'tax_query' => array(
            array(
            	'taxonomy' =>'cptax_news_category',
            	'field' => 'slug',
            	'terms' =>  'equities'
            	)
            ),
		'orderby' => 'date',
		'order' => 'DESC'
		);
	query_posts($args);
	*/
		if(have_posts()):
while (have_posts() ) : the_post(); 
get_template_part('partials/content','news-loop' ); 
endwhile;
endif;
wp_reset_query();
?>
<?php /* </ul> */ ?>
</div>
<?php
global $wp_query;
$num_pages = $wp_query->max_num_pages;
$current_term_id = 7;
if(get_queried_object()):
$current_term_id = get_queried_object()->term_id;
endif;
$next_page = $paged+1;
$paging_permalink = get_term_link($current_term_id,'cptax_news_category');
?>
<?php /* posts_nav_link(' - ', '&laquo; Prev', 'Next &raquo;'); */ ?>
<footer class="posts-footer"><a href="<?php echo $paging_permalink ?>page/<?php echo $next_page ?>/" class="button load-posts<?php if($paged >= $num_pages): ?> end<?php endif ?>"><i class="fa fa-cog fa-spin"></i> Load more posts</a></footer>

</section>
</div>

</div>


</div>

<!--/article-->

</main>
<!--/main content-->
<!--sidebar-->
<aside class="small-12 medium-3 columns">
	<div class="row">
	<?php

	function sortByCurrent($a, $b) {
    return $a['current'] - $b['current'];
}
	$args = array(
		'hide_empty' => 0
		);
	$terms = get_terms( 'cptax_news_category',$args);
	$term_array = [];
	foreach($terms as $term):
			$current_term = 0;
if($term->term_id == $current_term_id) $current_term = 1;
	$term_array[] = array('id'=>$term->term_id,'name'=>$term->name,'current'=>$current_term);
	endforeach;
		usort($term_array, 'sortByCurrent');
		$term_array = array_reverse($term_array);
		foreach($term_array as $term):
			$term_obj  = get_term($term['id'],'cptax_news_category');
		$term_permalink = get_term_link( $term_obj, 'cptax_news_category' );
	?>
	<?php list($icon_svg,$w,$h) = wp_get_attachment_image_src(get_field('icon_svg',$term_obj),'full'); ?>
	<?php list($icon_png,$w,$h) = wp_get_attachment_image_src(get_field('icon_png',$term_obj),'full'); ?>
	<!--box-->
<div class="small-12 columns square box orange bottom-spaced<?php if($term['current']): ?> current<?php endif ?>"><div class="box-outer">
	<?php if(!$term['current']): ?><a href="<?php echo $term_permalink ?>" title="<?php echo $term['name'] ?>" class="box-link"> <?php endif ?>
<span class="box-content"><span class="vcenter-wrap"><span class="vcenter"><h3><?php echo style_heading($term['name']) ?></strong></h3></span></span></span><span class="box-overlay"></span><span class="box-icon"><img src="<?php echo $icon_svg ?>" onerror="this.onerror=null; this.src='<?php echo $icon_png ?>'" /></span>
<?php if(!$term['current']): ?></a><?php endif; ?>
</div></div>
<!--/box-->
<?php
endforeach;
	wp_reset_query();
	 ?>
<?php /*
	<!--box-->
<div class="small-12 columns square box orange bottom-spaced"><div class="box-outer"><a href="#" class="box-link"><span class="box-content"><span class="vcenter-wrap"><span class="vcenter"><h3>Press <strong>Releases</strong></h3></span></span></span><span class="box-overlay"></span><span class="box-icon"><img src="<?php echo get_template_directory_uri(); ?>/images/press-release-icon.svg" onerror="this.onerror=null; this.src='<?php echo get_template_directory_uri(); ?>/images/press-release-icon.png'" /></span></a></div></div>
<!--/box-->
	<!--box-->
<div class="small-12 columns square box orange"><div class="box-outer"><a href="#" class="box-link"><span class="box-content"><span class="vcenter-wrap"><span class="vcenter"><h3>For <strong>Charity</strong></h3></span></span></span><span class="box-overlay"></span><span class="box-icon"><img src="<?php echo get_template_directory_uri(); ?>/images/charity-icon.svg" onerror="this.onerror=null; this.src='<?php echo get_template_directory_uri(); ?>/images/charity-icon.png'" /></span></a></div></div>
<!--/box-->
*/ ?>
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
<?php get_footer() ?> 