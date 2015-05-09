<!--sidebar-->
<aside class="small-12 medium-3 columns">
	<div class="row">
	<!--box-->
<div class="small-12 columns box bottom-spaced">
<div class="box-outer">
	<div class="box-content">
		<nav id="recent-posts">
<h4><strong>Recent Posts</strong></h4>
<ul class="bullet-list">
	<?php
	$args=array(
		'posts_per_page' => 5,
		'post_status' => 'publish'
		);
		query_posts($args);
	if(have_posts()) :
		while (have_posts() ) : the_post(); 
			get_template_part('partials/content','latest-post-loop');
		endwhile;
		endif;
		?>
	</ul>
	</div>
</div>
</div>

	<!--/box-->
	<!--box-->
<div class="small-12 columns box bottom-spaced">
<div class="box-outer">
	<div class="box-content">
		<nav id="categories">
		<h4><strong>Categories</strong></h4>
	
		<ul class="bullet-list">
		<?php
		$args = array(
  			'orderby'      => 'name',
  			'show_count'   => 0,
  			'pad_counts'   => 0,
  			'hierarchical' => 1,
  			'title_li'     => ''
		);
wp_list_categories( $args );
?>
</ul>
</nav>
</div>
</div>
</div>
<!--/box-->
<!--box-->
<div class="small-12 columns box bottom-spaced">
<div class="box-outer">
	<div class="box-content">
		<nav id="categories">
		<h4><strong>Archive</strong></h4>
		<ul class="bullet-list">
<?php $args = array(
	'type'            => 'monthly',
	'limit'           => 10,
	'format'          => 'html', 
	'before'          => '',
	'after'           => '',
	'show_post_count' => false,
	'echo'            => 1,
	'order'           => 'DESC'
); 
wp_get_archives( $args );
?>
</ul>
</nav>
</div>
</div>
</div>
<!--/box-->
<!--/box-->
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