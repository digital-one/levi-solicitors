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
		<?php
		//section loop
		if(have_rows('page_sections_rptr')):
			while(have_rows('page_sections_rptr')):
				the_row();
			$section_type = get_sub_field('section_type');
			$section_title = get_sub_field('section_title');
			$section_col_1_title = get_sub_field('section_column_one_title');
			$section_col_1 = get_sub_field('section_column_one');
			$section_col_2_title = get_sub_field('section_column_two_title');
			$section_col_2 = get_sub_field('section_column_two');
			$section_team_member = get_sub_field('section_team_member');
			switch($section_type){
				case 'wrapping':
				?>
				<div class="box-content">
				<?php
				//sub section loop
				if( have_rows('section_sub_sections') ): //nested repeater field
					while( have_rows('section_sub_sections')):
					the_row();
					$sub_section_type = get_sub_field('sub_section_type');
					$title = get_sub_field('sub_section_title');
					$col_1_title = get_sub_field('sub_section_column_one_title');
					$col_1 = get_sub_field('sub_section_column_one');
					$col_2_title = get_sub_field('sub_section_column_two_title');
					$col_2 = get_sub_field('sub_section_column_two');
					switch($sub_section_type){
						case 'one-column':
						?>
						<!-- 1 column sub section -->
						<section class="section">
						<div class="row">
		<div class="small-12 columns">
			<?php if(!empty($title)): ?>
			<h2><strong><?php echo $title ?></strong></h2>
		<?php endif ?>
			<?php echo $col_1 ?>
		</div>
		</div>
	</section>
						<!-- /1 column sub section -->
						<?php
						break;
						case 'two-column':
						?>
		<!-- 2 column sub section -->
<section class="section">
	<?php if(!empty($title)): ?>
<h2><strong><?php echo $title ?></strong></h2>
<?php endif ?>
<div class="row">
<div class="small-12 large-6 columns bullet-list">
	<?php if(!empty($col_1_title)): ?>
	<h4><strong><?php echo $col_1_title ?></strong></h4>
<?php endif; ?>
	<?php echo $col_1 ?>
<?php /*<p>In everyday life it is inevitable that disputes will sometimes occur. When conflicts do arise, they need specialist help to resolve them.􏰃Levi Solicitors will go that extra mile to understand your concerns and to protect and advance your interests.􏰃</p>
<p>As a leading law firm we take a no-nonsense, pro-active approach whilst retaining the personal touch.</p> */ ?>
</div>
<div class="small-12 large-6 columns bullet-list">
	<?php if(!empty($col_2_title)): ?>
	<h4><strong><?php echo $col_2_title ?></strong></h4>
<?php endif; ?>
	<?php echo $col_2 ?>
<?php /*<p>We take care to understand your individual needs and our emphasis is on client care and seeing things through with you to a successful outcome.􏰃</p>
<p>Levi Solicitors'􏰃litigation team has the experience to ensure you achieve the best possible outcome.</p> */ ?>
</div>
</div>
</section>
<!-- / 2 column sub section -->
						<?php
						break;
						}
					endwhile;
					endif;
?>
</div>
<?php
				break;
				case 'one-column':
				?>
<section class="section">
<div class="box-content">
<?php if(!empty($section_title)):?>
	<h2><strong><?php echo $section_title; ?></strong></h2>
	 <?php endif ?>
<?php echo $section_col_1 ?>
</div>
</section>
				<?php
				break;
				case 'two-column':
				?>
<section class="section">
	<div class="box-content">
<?php if(!empty($section_title)):?>
	<h2><strong><?php echo $section_title; ?></strong></h2>
	 <?php endif ?>
<div class="row">
<div class="small-12 large-6 columns bullet-list">
	<?php if(!empty($section_col_1_title)):?>
	<h4><strong><?php echo $section_col_1_title; ?></strong></h4>
	 <?php endif ?>
<?php echo $section_col_1 ?>
</div>
<div class="small-12 large-6 columns bullet-list">
	<?php if(!empty($section_col_2_title)):?>
	<h4><strong><?php echo $section_col_2_title; ?></strong></h4>
	 <?php endif ?>
<?php echo $section_col_1 ?>
</div>
</div>
</div>
</section>
				<?php
				break;
				case 'expert-advice':
				$member = get_post($section_team_member);
				?>
<section class="tint box">
<div class="box-content">
<h2><strong>Expert Advice</strong></h2>
<div class="team-profile profile">
	<?php list($src,$w,$h) = wp_get_attachment_image_src(get_post_thumbnail_id($member->ID),'profile-image'); ?>
<figure><img src="<?php echo $src ?>" title="<?php echo $member->post_title ?>" /></figure>
<h4><strong><?php echo $member->post_title ?></strong><?php echo get_field('team_job_title',$member->ID) ?></h4>
<div class="bullet-list"><?php echo $member->post_content ?></div>
<footer><ul class="meta"><li><i class="fa fa-phone-square"></i><a href="tel:<?php echo str_replace(' ','',get_field('team_tel',$member->ID)) ?>"><?php echo get_field('team_tel',$member->ID) ?></a></li><li><i class="fa fa-envelope"></i><a href="mailto:<?php echo get_field('team_email',$member->ID); ?>"><?php echo get_field('team_email',$member->ID); ?></a></li></ul></footer>
</div>
</div>
</section>
				<?php
				break;
				}
				endwhile;
				endif;
				?>

<?php
/*
	<!-- parent wrapping section -->
<div class="box-content">
	<!-- 2 column sub section -->
<section class="section">
<h2><strong>What we do</strong></h2>
<div class="row">
<div class="small-12 large-6 columns">
<p>In everyday life it is inevitable that disputes will sometimes occur. When conflicts do arise, they need specialist help to resolve them.􏰃Levi Solicitors will go that extra mile to understand your concerns and to protect and advance your interests.􏰃</p>
<p>As a leading law firm we take a no-nonsense, pro-active approach whilst retaining the personal touch.</p>
</div>
<div class="small-12 large-6 columns">
<p>We take care to understand your individual needs and our emphasis is on client care and seeing things through with you to a successful outcome.􏰃</p>
<p>Levi Solicitors'􏰃litigation team has the experience to ensure you achieve the best possible outcome.</p>
</div>
</div>
</section>
<!-- / 2 column sub section -->
<!-- 2 column sub section -->
<section>
<h2><strong>How we can help</strong></h2>
<div class="row">
<div class="small-12 large-6 columns">
	<h3>Column Title</h3>
<p>We regularly resolve a whole range of disputes for clients in the UK and overseas, in areas such as civil and commercial litigation, property disputes, insurance litigation, partnerships and inheritance/Trust disputes.</p>
<p>Our group of specialist civil litigation and dispute resolution lawyers can assist and advise at any stage of a conflict including mediation through to interim remedies, court action and injunctions.􏰃We give you robust, clear and practical advice in the context of your individual needs and objectives.</p>
<p>Although our team has extensive court experience, we understand the importance of exploring alternatives to litigation where possible.􏰃We will discuss with you whether formal mediation or other forms of alternative dispute resolution are appropriate.􏰃We regularly utilise mediation as an effective way of proactively resolving disputes cost effectively, where appropriate.</p>
</div>
<div class="small-12 large-6 columns">
	<h3>Column Title</h3>
<p><strong>Our team of experienced litigators has wide experience and expertise in an extensive range of􏰃 civil litigation, including:􏰃􏰃</strong></p>
<ul class="bullet-list">
<li>Alternative Dispute Resolution ("ADR") / Mediation</li>
<li>Banking Litigation</li>
<li>Building Disputes</li>
<li>Construction Disputes</li>
<li>Contract Disputes</li>
<li>Emergency Injunctions</li>
<li>Insurance Disputes</li>
<li>Minority Shareholder Claims􏰃</li>
<li>Negligence Claims</li>
<li>Partnership Disputes</li>
<li>Pensions Litigation</li>
<li>Property Litigation</li>
<li>Professional Negligence</li>
<li>Wills, Probate &amp; Trusts Disputes</li>
</ul>
</div>
</div>
</section>
<!-- / 2 column sub section -->
<!-- 1 column sub section -->
<section>
<div class="row">
<div class="small-12 large-6 columns">
	<h2><strong>How we can help</strong></h2>
	<p>We regularly resolve a whole range of disputes for clients in the UK and overseas, in areas such as civil and commercial litigation, property disputes, insurance litigation, partnerships and inheritance/Trust disputes.</p>
<p>Our group of specialist civil litigation and dispute resolution lawyers can assist and advise at any stage of a conflict including mediation through to interim remedies, court action and injunctions.􏰃We give you robust, clear and practical advice in the context of your individual needs and objectives.</p>
<p>Although our team has extensive court experience, we understand the importance of exploring alternatives to litigation where possible.􏰃We will discuss with you whether formal mediation or other forms of alternative dispute resolution are appropriate.􏰃We regularly utilise mediation as an effective way of proactively resolving disputes cost effectively, where appropriate.</p>
</div>
</div>
</section>
<!-- / 1 column sub section -->
</div>
<!-- /parent wrapping section -->
<!-- expert advice section -->
<section class="tint box">
<div class="box-content">
<h2><strong>Expert Advice</strong></h2>
<div class="team-profile profile">
<figure><img src="<?php echo get_template_directory_uri(); ?>/images/nia-planchant.jpg" title="Nia Planchant" /></figure>
<p><h4><strong>NIA PLANCHANT</strong> - PARTNER</h4>
Nia is a Partner within the firm’s Professional Indemnity department and works within the coverage and pre-action team. Nia has experience of advising on coverage issues and policy matters generally and in particular professional negligence claims against solicitors. She also has a wealth of experience of working within a Criminal Defence practice and VHCC fraud team.</p>
<p>Nia has worked as a volunteer mentor with the Youth Offending Service.</p>
<footer><ul class="meta"><li><i class="fa fa-phone-square"></i><a href="tel:01132973163">0113 297 3163</a></li><li><i class="fa fa-envelope"></i><a href="mailto:nplanchant@levisolicitors.co.uk">nplanchant@levisolicitors.co.uk</a></li></ul></footer>
</div>
</div>
</section>
<!-- /expert advice section -->
*/
?>
<!-- service sign off cta -->
<section>
<div class="box-content">
<p>We offer a FREE civil litigation case assessment service and advise about funding options including No Win – No Fee. If you would like more information about the services the civil litigation and dispute resolution team can offer please call 0113 2449931 or click here to make an enquiry.</p>
<a href="#" class="button">Get in touch</a>
</div>
</section>
<!-- /service sign off cta -->
<!--services carousel-->
<section class="tint">
<h2 class="band"><strong>Our Services</strong></h2>
<div class="box-content">
<div id="services-carousel">
	<?php
	$args = array(
		'post_type'=>'page',
		'post_status' => 'publish',
		'post_parent' => $post->post_parent,
		'post__not_in' => array($post->ID),
		'orderby' => 'menu_order',
		'order' => 'ASC'
		);
	query_posts($args);
	if(have_posts()) :
		while (have_posts() ) : the_post(); 
			 get_template_part('partials/content','service-carousel-loop' ); 
	endwhile;
	endif;
	wp_reset_query();
?>
<?php /*
<div class="item"><a href=""><figure><img src="<?php echo get_template_directory_uri(); ?>/images/clinical-negligence.jpg" /></figure><span>Clinical Negligence</span></a></div>
<div class="item"><a href=""><figure><img src="<?php echo get_template_directory_uri(); ?>/images/immigration.jpg" /></figure><span>Immigration</span></a></div>
<div class="item"><a href=""><figure><img src="<?php echo get_template_directory_uri(); ?>/images/personal-injury.jpg" /></figure><span>Personal Injury</span></a></div>
<div class="item"><a href=""><figure><img src="<?php echo get_template_directory_uri(); ?>/images/personal-injury.jpg" /></figure><span>Personal Injury</span></a></div>
*/ ?>
</div>
</div>
</section>
<!--/services carousel-->
</div>
</div>
<!--/article-->
</div>
</main>
<!--/main content-->
<?php get_sidebar('page') ?>
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