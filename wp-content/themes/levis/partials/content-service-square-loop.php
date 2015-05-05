
	<?php if(get_field('page_link_type',get_the_ID())=='icon'): ?>
<!--icon box-->
<?php list($icon_svg,$w,$h) = wp_get_attachment_image_src(get_field('page_icon_svg',get_the_ID()),'full'); ?>
<?php list($icon_png,$w,$h) = wp_get_attachment_image_src(get_field('page_icon_png',get_the_ID()),'full'); ?>
<div class="small-12 columns square box orange bottom-spaced<?php if($count == $numberposts):?> end<?php endif ?>"><div class="box-outer"><a href="<?php the_permalink() ?>" class="box-link"><span class="box-content"><span class="vcenter-wrap"><span class="vcenter"><h3><?php echo style_heading(get_the_title()) ?></h3></span></span></span><span class="box-overlay"></span><span class="box-icon"><img src="<?php echo $icon_svg ?>" onerror="this.onerror=null; this.src='<?php echo $icon_png ?>'" /></span></a></div></div>
<!--/icon box-->

<?php
	else:
	list($src,$w,$h) = wp_get_attachment_image_src(get_post_thumbnail_id(get_the_ID()),'square-image'); ?>
	<!--image box-->
<div class="small-12 medium-3 large-3 columns square box<?php if($count == $numberposts):?> end<?php endif ?>"><div class="box-outer"><a href="<?php the_permalink() ?>" class="box-link" title="<?php the_title() ?>"><span class="box-content"><span class="vcenter-wrap"><span class="vcenter"><h3><?php echo style_heading(get_the_title()) ?></h3></span></span></span><span class="box-overlay"></span><span class="box-image"  style="background-image:url('<?php echo $src ?>');"></span></a></div></div>
<!--/image box-->
<?php endif ?>