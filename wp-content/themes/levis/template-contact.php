<?php /* Template Name: Contact */ ?>
<?php get_header() ?>
<?php if (have_posts()) : while (have_posts()) : the_post(); ?>
	<div id="content" class="row">
<!--main content-->
<main id="main" role="main" class="small-12 medium-9 columns">
<div class="row">
	<!--header box-->
<div class="small-12 columns bottom-spaced box padding-2x three-quarter">

<div class="box-outer" style="background-image:url('<?php echo get_template_directory_uri(); ?>/images/contact-header-bg.jpg');">
	<div class="box-content">
		<span class="vcenter-wrap">
			<span class="vcenter"><h1>Contact <strong>us</strong></h1><a href="#" class="button">Get in touch</a></span>
		</span>
	</div>
	</div>

</div>
<!--/header box-->
<!--article-->
<div class="small-12 columns bottom-spaced box padding-2x">
	<div class="box-outer dotted-links">
<div class="box-content">
<section class="section">
<h2><strong>Contact Details</strong></h2>

<div class="row">
<div class="small-12 large-5 columns">
<p>33 St Pauls Street<br />Leeds<br />LS1 2JJ<br />DX 706957 Leeds Park Square</p>
</div>
<div class="small-12 large-7 columns">
	<p>TELEPHONE <a href="tel:+441132449931">+44 (0) 113 244 9931</a><br />FAX +44 (0) 113 297 1872<br />EMAIL <a href="mailto:info@levisolicitors.co.uk">info@levisolicitors.co.uk</a></p>
</div>

</div>
</section>
<section class="section">
<h2><strong>Enquiries</strong></h2>
<div class="row">
<div class="small-12 large-5 columns">
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ullamcorper interdum magna, sed cursus tellus fermentum sit amet. Nulla hendrerit ipsum non finibus efficitur. Quisque venenatis egestas mi, id dignissim felis hendrerit cursus. Vivamus porttitor volutpat egestas. Nulla facilisi. Vestibulum sit amet cursus metus, ac rhoncus ipsum. Cras hendrerit sollicitudin porttitor. </p>
</div>
<div class="small-12 large-7 columns">
	<?php 
//(id, display title, display desc, display inactive, field values, ajax, tab index)
	gravity_form(1, false, false, false, '', true, 1); ?>
</div>

</div>
</section>

</div>
</div>
<!--/article-->

</main>
<!--/main content-->
<!--sidebar-->
<aside class="small-12 medium-3 columns">
<div class="row">
		<!--box-->
<div class="small-12 columns square box"><div class="box-outer"><a href="#" class="box-link"><span class="box-content"><span class="vcenter-wrap"><span class="vcenter"><h3>Our <strong>Team</strong></h3></span></span></span><span class="box-overlay"></span><span class="box-image" style="background-image:url('<?php echo get_template_directory_uri(); ?>/images/team-bg.jpg');"></span></a></div></div>
<!--/box-->
	<!--box-->
<div class="small-12 columns square box orange bottom-spaced twitter icon"><div class="box-outer"><a href="#" class="box-link"><span class="box-content"><span class="vcenter-wrap"><span class="vcenter"><h3>Our <strong>Twitter</strong></h3></span></span></span><span class="box-overlay"></span></a></div></div>
<!--/box-->
	<!--box-->
<div class="small-12 columns square box orange location icon"><div class="box-outer"><a href="#" class="box-link"><span class="box-content"><span class="vcenter-wrap"><span class="vcenter"><h3>Our <strong>Location</strong></h3></span></span></span><span class="box-overlay"></span></a></div></div>
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