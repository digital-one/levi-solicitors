<?php get_header() ?>
	<div id="content" class="row">
<!--main content-->
<main id="main" role="main" class="small-12 medium-9 columns">
<div class="row">

<!--article-->
<div class="small-12 columns bottom-spaced box padding-2x end">
	<div class="box-outer">
	<?php

		if(have_posts()):
while (have_posts() ) : the_post(); 
$terms = wp_get_post_terms(get_the_ID(),'cptax_news_category');
$current_term_id = $terms[0]->term_id;
?>
<article id="post" class="dotted-links">
	<div class="box-content<?php if(!has_post_thumbnail(get_the_ID())): ?> no-bottom-padding<?php endif ?>">
<header>
<h1><strong><?php the_title() ?></strong></h1>
<p><small>By <a href="<?php echo get_author_posts_url( get_the_author_meta( 'ID' )); ?>"><?php the_author_link( get_the_author_meta( 'ID' )) ?></a> on <time datetime="<?php the_time('Y-m-j') ?>"><?php the_time(__( 'F j, Y, H:i A' )) ?></time></small></p>
</header>
<?php the_content() ?>
<?php if( has_tag()): ?>
<footer><ul class="meta"><li><i class="fa fa-tag"></i><small><?php // echo $tag_list ;?><?php the_tags('',', ') ?></small></li></ul></footer>
<?php endif ?>
</div>
<?php if(has_post_thumbnail( get_the_ID())): ?> 

<figure>
<?php
list($src,$w,$h) = wp_get_attachment_image_src(get_post_thumbnail_id(get_the_ID()),'large-image');
?>
<img src="<?php echo $src ?>" />
</figure>
<?php endif ?>
<div class="box-content">
<a href="<?php echo get_term_link($terms[0]->term_id,'cptax_news_category');?>" class="button">back to articles</a>
</div>
</article>
<?php
endwhile;
endif;
wp_reset_query();
?>
<?php /* </ul> */ ?>







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
	<a href="<?php echo $term_permalink ?>" title="<?php echo $term['name'] ?>" class="box-link"> 
<span class="box-content"><span class="vcenter-wrap"><span class="vcenter"><h3><?php echo style_heading($term['name']) ?></strong></h3></span></span></span><?php if(!$term['current']): ?><span class="box-overlay"></span><?php endif ?><span class="box-icon"><img src="<?php echo $icon_svg ?>" onerror="this.onerror=null; this.src='<?php echo $icon_png ?>'" /></span>
</a>
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