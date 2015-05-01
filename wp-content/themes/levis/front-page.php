<?php get_header() ?>
<?php if (have_posts()) : while (have_posts()) : the_post(); ?>
<!--contact nav-->
<nav id="contact-nav">
	<div class="row">
		<ul>
			<li><i class="fa fa-phone-square"></i><a href="tel:01132449931">0113 244 9931</a></li>
			<li><i class="fa fa-envelope"></i><a href="mailto:info@levisolicitors.co.uk">info@levisolicitors.co.uk</a></li>
			<li><i class="fa fa-check-square"></i><a href="#">Request a call-back</a></li>
			<li><i class="fa fa-comments"></i><a href="#">Chat to a member of our team</a></li>
	</ul>
	</div>
</nav>
<!--/contact nav-->
<!--main content-->
<main id="main">
	<!--row-->
<div class="row">
	<div id="intro">
<div class="small-12 large-6 columns square box padding-2x bottom-spaced"><div class="box-outer"><div class="box-content"><h2>Working for you</h2><p><strong>Having been a cornerstone in the Leeds and Yorkshire legal community since the 1930s,</strong> we offer in-depth knowledge coupled with legal expertise and always put the needs of you and your business at the heart of everything we do.</p></div></div></div>
</div>
<div class="small-12 large-6 columns">
	<div class="row">
<div class="small-12 medium-6 large-12 columns half box top padding-2x"><div class="box-outer"><a href="#" class="box-link"><span class="box-content padding-2x"><span class="vcenter-wrap"><span class="vcenter"><span class="label"><h2>For <strong>You</strong></h2></span><span class="caption">Levi’s people offer a personal service, communicating with you about your legal matter in a clear and simple way...</span></span></span></span><span class="box-overlay"></span><span class="box-image" style="background-image:url('<?php echo get_template_directory_uri(); ?>/images/for-you-bg.jpg');"></span></a></div></div>
<div class="small-12 medium-6 large-12 columns bottom-spaced half box bottom padding-2x"><div class="box-outer"><a href="#" class="box-link"><span class="box-content padding-2x"><span class="vcenter-wrap"><span class="vcenter"><span class="label"><h2>For <strong>Business</strong></h2></span><span class="caption">Whatever your circumstances, Levi’s people have the legal know how coupled with business acumen to assist you...</span></span></span></span><span class="box-overlay"></span><span class="box-image"  style="background-image:url('<?php echo get_template_directory_uri(); ?>/images/for-business-bg.jpg');"></span></a></div></div>
</div>
</div>
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
<!--row-->
<div class="row">
	<!--box-->
<div class="small-12 medium-3 large-3 columns square box orange"><div class="box-outer"><a href="#" class="box-link"><span class="box-content"><span class="vcenter-wrap"><span class="vcenter"><h3 class="news-icon">Our <strong>News</strong></h3></span></span></span><span class="box-overlay"></span></a></div></div>
<!--/box-->
	<!--box-->
<div class="small-12 medium-3 large-3 columns square box"><div class="box-outer"><a href="#" class="box-link"><span class="box-content"><span class="vcenter-wrap"><span class="vcenter"><h3>Our <strong>History</strong></h3></span></span></span><span class="box-overlay"></span><span class="box-image" style="background-image:url('<?php echo get_template_directory_uri(); ?>/images/our-history-bg.jpg');"></span></a></div></div>
<!--/box-->
	<!--box-->
<div class="small-12 medium-3 large-3 columns square box orange"><div class="box-outer"><a href="#" class="box-link"><span class="box-content"><span class="vcenter-wrap"><span class="vcenter"><h3 class="success-icon">Our <strong>Success</strong></h3></span></span></span><span class="box-overlay"></span></a></div></div>
<!--/box-->
	<!--box-->
<div class="small-12 medium-3 large-3 columns square box"><div class="box-outer"><a href="#" class="box-link"><span class="box-content"><span class="vcenter-wrap"><span class="vcenter"><h3>Our <strong>Team</strong></h3></span></span></span><span class="box-overlay"></span><span class="box-image" style="background-image:url('<?php echo get_template_directory_uri(); ?>/images/team-bg.jpg');"></span></a></div></div>
<!--/box-->
<!--/row-->
</main>
<!--/main content-->
<?php endwhile ?>
<?php endif ?>
<?php get_footer() ?> 