	<!--box-->
<?php list($icon_svg,$w,$h) = wp_get_attachment_image_src(get_field('page_icon_svg'),'full'); ?>
<?php list($icon_png,$w,$h) = wp_get_attachment_image_src(get_field('page_icon_png'),'full'); ?>
<div class="small-12 columns square box orange bottom-spaced icon success"><div class="box-outer"><a href="<?php the_permalink() ?>" class="box-link"><span class="box-content"><span class="vcenter-wrap"><span class="vcenter"><h3><?php echo style_heading(get_the_title()) ?></h3></span></span></span><span class="box-overlay"></span><span class="box-icon"><img src="<?php echo $icon_svg ?>" onerror="this.onerror=null; this.src='<?php echo $icon_png ?>'" /></span></a></div></div>
<!--/box-->