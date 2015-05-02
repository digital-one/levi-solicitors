<!--header box-->
<div class="small-12 large-9 columns bottom-spaced box padding-2x three-quarter">
<?php
list($src,$w,$h) = wp_get_attachment_image_src(get_field('page_header_image',get_the_ID()),'header-image');
?>
<div class="box-outer" style="background-image:url('<?php echo $src ?>');">
	<div class="box-content">
		<span class="vcenter-wrap">
			<span class="vcenter"><h1><?php echo style_heading(get_the_title()) ?></h1><a href="<?php echo get_permalink(14) ?>" class="button">Get in touch</a></span>
		</span>
	</div>
	</div>
</div>
<!--/header box-->


