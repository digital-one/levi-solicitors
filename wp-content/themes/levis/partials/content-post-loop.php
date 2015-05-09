<!--post-->
<?php
$class='';
$has_pic = false;
if(has_post_thumbnail()):
list($src,$w,$h) = wp_get_attachment_image_src(get_post_thumbnail_id(),'square-image');
$class='pic ';
$has_pic = true;
endif;
?>
<article class="post <?php echo $class ?>dotted-links">
<header>
<h4><a href="<?php echo get_permalink(); ?>" rel="bookmark"><strong><?php the_title() ?></strong></a></h4>
<p><small>By <a href="<?php echo get_author_posts_url( get_the_author_meta( 'ID' )); ?>"><?php the_author_link( get_the_author_meta( 'ID' )) ?></a> on <time datetime="<?php the_time('Y-m-j') ?>"><?php the_time(__( 'F j, Y, H:i A' )) ?></time></small></p>
</header>
<main>
	<?php if($has_pic): ?>
<figure><a href="<?php the_permalink() ?>"><img src="<?php echo $src ?>" title="<?php the_title() ?>" /></a></figure>
<?php endif ?>
<?php the_excerpt() ?>
</main>
<footer>
	<ul class="meta"></ul>
</footer>

<footer>
<ul class="meta">
	<?php if($terms = get_the_term_list( get_the_ID(), 'category', '', ', ' )): ?>
	<li><i class="fa fa-tag"></i><small><?php echo $terms; ?></small></li>
	<?php
	if ( ! post_password_required() && ( comments_open() || get_comments_number() ) ) : ?>
	<li><i class="fa fa-comment"></i><small><?php comments_popup_link( __( 'Leave a comment', 'kempstonparkesco' ), __( '1 Comment', 'kempstonparkesco' ), __( '% Comments', 'kempstonparkesco' ) ); ?></small></li>
	<?php endif; ?>
<?php endif ?>
<?php /*
	<?php if( has_tag()): ?>
<li><i class="fa fa-tag"></i><small><?php // echo $tag_list ;?><?php the_tags('',', ') ?></small></li>
<?php endif ?>
*/ ?>
</ul>
</footer>

</article>

<!--/post-->