<!--sidebar-->
<aside class="row">
<?php
		$default_links = array(10,227,36);
	if(get_field('page_sidebar_page_links')):
		$sidebar_links=array();
	
	while(the_repeater_field('page_sidebar_page_links')): 
		$page_link = get_sub_field('page_link');
			$sidebar_links[] = $page_link->ID;
		endwhile;
		else:
			$sidebar_links = $default_links;
			endif;
	$args = array(
		'post_type' => 'page',
		'post_status' => 'publish',
		'orderby' => 'menu_order',
		'order' => 'ASC',
		'post__in' => $sidebar_links
		);
	query_posts($args);
	$cols = 3;
	if(have_posts()) :
		while (have_posts() ) : the_post(); 
			include( locate_template( 'partials/content-sidebar-links-loop.php' ));
	endwhile;
	endif;
	wp_reset_query();

		?>
</aside>
<!--/sidebar-->