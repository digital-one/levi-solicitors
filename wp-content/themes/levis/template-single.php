<?php /* Template Name: News Single */ ?>
<?php get_header() ?>
<?php if (have_posts()) : while (have_posts()) : the_post(); ?>
	<div id="content" class="row">
<!--main content-->
<main id="main" role="main" class="small-12 medium-9 columns">
<div class="row">
	<!--header box-->
<div class="small-12 columns bottom-spaced box padding-2x three-quarter">

<div class="box-outer" style="background-image:url('<?php echo get_template_directory_uri(); ?>/images/our-news-header-bg.jpg');">
	<div class="box-content">
		<span class="vcenter-wrap">
			<span class="vcenter"><h1>OUR <strong>NEWS</strong></h1><a href="#" class="button">Back to articles</a></span>
		</span>
	</div>
	</div>

</div>
<!--/header box-->
<!--article-->
<div class="small-12 columns bottom-spaced box padding-2x">
	<article id="post" class="box-outer dotted-links">
<div class="box-content">

	<header>
<h2><strong>Article Title</strong></h2>
<ul class="meta">
	<li><i class="fa fa-user"></i><small>By <a href="">Author</a> on <time datetime="">12th June 2015</time></small></li>
	<li><i class="fa fa-tag"></i><small><a href="">Government</a>, <a href="">Election</a>, <a href="">Law</a></small></li>
</ul>
</header>
<div class="row">
<div class="small-12 columns">
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut laoreet dolor justo, eget cursus mi rhoncus sit amet. Nullam non iaculis sem. Suspendisse ac elementum mi. Fusce consectetur bibendum faucibus. Mauris in ligula vehicula, posuere eros eget, tristique purus. Sed sit amet maximus metus. Nulla facilisi. Pellentesque porttitor est nulla, vel bibendum leo laoreet quis</p>


<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut laoreet dolor justo, eget cursus mi rhoncus sit amet. Nullam non iaculis sem. Suspendisse ac elementum mi. Fusce consectetur bibendum faucibus. Mauris in ligula vehicula, posuere eros eget, tristique purus. Sed sit amet maximus metus. Nulla facilisi. Pellentesque porttitor est nulla, vel bibendum leo laoreet quis</p>
</div>
</div>

</div>
<section class="video">
<img src="<?php echo get_template_directory_uri(); ?>/images/video-placeholder.jpg" />
</section>
<div class="box-content no-bottom-padding">

<div class="row">
<div class="small-12 columns">
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut laoreet dolor justo, eget cursus mi rhoncus sit amet. Nullam non iaculis sem. Suspendisse ac elementum mi. Fusce consectetur bibendum faucibus. Mauris in ligula vehicula, posuere eros eget, tristique purus. Sed sit amet maximus metus. Nulla facilisi. Pellentesque porttitor est nulla, vel bibendum leo laoreet quis</p>


<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut laoreet dolor justo, eget cursus mi rhoncus sit amet. Nullam non iaculis sem. Suspendisse ac elementum mi. Fusce consectetur bibendum faucibus. Mauris in ligula vehicula, posuere eros eget, tristique purus. Sed sit amet maximus metus. Nulla facilisi. Pellentesque porttitor est nulla, vel bibendum leo laoreet quis</p>
</div>
</div>


</div>
<footer class="box-content">
<a href="#" class="button">Back to articles</a>
</footer>
</div>


</article>
</div>
<!--/article-->

</main>
<!--/main content-->
<!--sidebar-->
<aside class="small-12 medium-3 columns">
<div class="row">
	<!--box-->
<div class="small-12 columns square box orange bottom-spaced news icon"><div class="box-outer"> <a href="#" class="box-link"><span class="box-content"><span class="vcenter-wrap"><span class="vcenter"><h3>News <strong>Articles</strong></h3></span></span></span><span class="box-overlay"></span></div></div>
<!--/box-->
	<!--box-->
<div class="small-12 columns square box orange bottom-spaced press icon"><div class="box-outer"><a href="#" class="box-link"><span class="box-content"><span class="vcenter-wrap"><span class="vcenter"><h3>Press <strong>Releases</strong></h3></span></span></span><span class="box-overlay"></span></a></div></div>
<!--/box-->
	<!--box-->
<div class="small-12 columns square box orange charity icon"><div class="box-outer"><a href="#" class="box-link"><span class="box-content"><span class="vcenter-wrap"><span class="vcenter"><h3>For <strong>Charity</strong></h3></span></span></span><span class="box-overlay"></span></a></div></div>
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