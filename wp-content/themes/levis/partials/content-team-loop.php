<!--team member-->
<li class="team-profile">
<article class="post profile pic-top tint">
	<?php list($src,$w,$h) = wp_get_attachment_image_src(get_post_thumbnail_id(get_the_ID()),'profile-image'); ?>
<figure><a href="<?php the_permalink() ?>" title="<?php the_title() ?>"><img src="<?php echo $src ?>" title="<?php the_title() ?>" /></a></figure>
<h4><a href="<?php the_permalink() ?>" title="?php the_title() ?>"><strong><?php the_title() ?></strong><?php echo get_field('team_job_title',get_the_ID()) ?></a></h4>
<p><?php the_excerpt() ?></p>
<footer><ul class="meta"><li><i class="fa fa-phone-square"></i><a href="tel:<?php echo str_replace(' ','',get_field('team_tel',get_the_ID())) ?>"><?php echo get_field('team_tel',get_the_ID()) ?></a></li><li><i class="fa fa-envelope"></i><a href="mailto:<?php echo get_field('team_email',get_the_ID()) ?>"><?php echo get_field('team_email',get_the_ID()) ?></a></li></ul></footer>
</article>
</li>
<!--/team member-->