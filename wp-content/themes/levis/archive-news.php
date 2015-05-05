<?php get_header() ?>
<?php if (have_posts()) : while (have_posts()) : the_post(); ?>
	<div id="content" class="row">
<!--main content-->
<main id="main" role="main" class="small-12 medium-9 columns">
<div class="row">
<?php get_template_part('partials/content','page-title' );  ?>
<!--article-->
<div class="small-12 columns bottom-spaced box padding-2x">
	<div class="box-outer">
<div class="box-content">
<section id="posts" class="section">
<ul class="small-block-grid-1">
<!--post-->
<li>
<article class="post pic dotted-links">
<header>
<h4><a href="<?php echo get_permalink(103); ?>"><strong>Article Title</strong></a></h4>
<p><small>By <a href="">Author</a> on <time datetime="">12th June 2015</time></small></p>
</header>
<main>
<figure><a href=""><img src="<?php echo get_template_directory_uri(); ?>/images/steven-newdall.jpg" title="Steven Newdall" /></a></figure>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut laoreet dolor justo, eget cursus mi rhoncus sit amet. Nullam non iaculis sem. Suspendisse ac elementum mi. Fusce consectetur bibendum faucibus. Mauris in ligula vehicula, posuere eros eget, tristique purus. Sed sit amet maximus metus. Nulla facilisi. Pellentesque porttitor est nulla, vel bibendum leo laoreet quis ...<a href="">Read more</a></p>
</main>
<footer><ul class="meta"><li><i class="fa fa-tag"></i><small><a href="">Government</a>, <a href="">Election</a>, <a href="">Law</a></small></li></ul></footer>
</article>
</li>
<!--/post-->
<!--post-->
<li>
<article class="post dotted-links">
<header>
<h4><a href=""><strong>Article Title</strong></a></h4>
<p><small>By <a href="">Author</a> on <time datetime="">12th June 2015</time></small></p>
</header>
<main>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut laoreet dolor justo, eget cursus mi rhoncus sit amet. Nullam non iaculis sem. Suspendisse ac elementum mi. Fusce consectetur bibendum faucibus. Mauris in ligula vehicula, posuere eros eget, tristique purus. Sed sit amet maximus metus. Nulla facilisi. Pellentesque porttitor est nulla, vel bibendum leo laoreet quis ...<a href="">Read more</a></p>
</main>
<footer><ul class="meta"><li><i class="fa fa-tag"></i><small><a href="">Government</a>, <a href="">Election</a>, <a href="">Law</a></small></li></ul></footer>
</article>
</li>
<!--/post-->
<!--post-->
<li>
<article class="post pic dotted-links">
<header>
<h4><a href=""><strong>Article Title</strong></a></h4>
<p><small>By <a href="">Author</a> on <time datetime="">12th June 2015</time></small></p>
</header>
<main>
<figure><a href=""><img src="<?php echo get_template_directory_uri(); ?>/images/steven-newdall.jpg" title="Steven Newdall" /></a></figure>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut laoreet dolor justo, eget cursus mi rhoncus sit amet. Nullam non iaculis sem. Suspendisse ac elementum mi. Fusce consectetur bibendum faucibus. Mauris in ligula vehicula, posuere eros eget, tristique purus. Sed sit amet maximus metus. Nulla facilisi. Pellentesque porttitor est nulla, vel bibendum leo laoreet quis ...<a href="">Read more</a></p>
</main>
<footer><ul class="meta"><li><i class="fa fa-tag"></i><small><a href="">Government</a>, <a href="">Election</a>, <a href="">Law</a></small></li></ul></footer>
</article>
</li>
<!--/post-->
</ul>
<footer><a class="button load-more"><i class="fa fa-cog fa-spin"></i> Load more posts</a></footer>
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
	<?php list($icon_svg,$w,$h) = wp_get_attachment_image_src(get_field('page_icon_svg',get_the_ID()),'full'); ?>
<?php list($icon_png,$w,$h) = wp_get_attachment_image_src(get_field('page_icon_png',get_the_ID()),'full'); ?>
	<!--box-->
<div class="small-12 columns square box orange bottom-spaced current"><div class="box-outer"><?php /*<a href="#" class="box-link"> */ ?><span class="box-content"><span class="vcenter-wrap"><span class="vcenter"><h3>News <strong>Articles</strong></h3></span></span></span><span class="box-overlay"></span><span class="box-icon"><img src="<?php echo get_template_directory_uri(); ?>/images/news-icon.svg" onerror="this.onerror=null; this.src='<?php echo get_template_directory_uri(); ?>/images/news-icon.png'" /></span><?php /* </a> */ ?></div></div>
<!--/box-->
	<!--box-->
<div class="small-12 columns square box orange bottom-spaced"><div class="box-outer"><a href="#" class="box-link"><span class="box-content"><span class="vcenter-wrap"><span class="vcenter"><h3>Press <strong>Releases</strong></h3></span></span></span><span class="box-overlay"></span><span class="box-icon"><img src="<?php echo get_template_directory_uri(); ?>/images/press-release-icon.svg" onerror="this.onerror=null; this.src='<?php echo get_template_directory_uri(); ?>/images/press-release-icon.png'" /></span></a></div></div>
<!--/box-->
	<!--box-->
<div class="small-12 columns square box orange"><div class="box-outer"><a href="#" class="box-link"><span class="box-content"><span class="vcenter-wrap"><span class="vcenter"><h3>For <strong>Charity</strong></h3></span></span></span><span class="box-overlay"></span><span class="box-icon"><img src="<?php echo get_template_directory_uri(); ?>/images/charity-icon.svg" onerror="this.onerror=null; this.src='<?php echo get_template_directory_uri(); ?>/images/charity-icon.png'" /></span></a></div></div>
<!--/box-->
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
<?php endwhile ?>
<?php endif ?>
<?php get_footer() ?> 