<!--footer-->
<footer id="footer">
	<!--affiliates-->
<section id="affiliates" class="row">
	<div id="affiliates-carousel">
		<?php
		if(get_field('accreditations_rptr',2)):
while(the_repeater_field('accreditations_rptr',2)): 
list($logo,$w,$h) = wp_get_attachment_image_src(get_sub_field('accreditation_logo'), 'full');
$title = get_sub_field('accreditation_title');
$link = get_sub_field('accreditation_url');
?>
	<div class="item"><div class="vcenter-wrap"><div class="vcenter"><div class="logo">
	<?php if(!empty($link)): ?><a href="<?php echo $link ?>" title="<?php echo $title ?>" target="_blank"><?php else: ?><span><?php endif ?>
	<img src="<?php echo $logo ?>" title="<?php echo $title ?>" />
	<?php if(!empty($link)): ?></a><?php else: ?></span><?php endif ?>
	</div></div></div></div>
<?php endwhile ?>
<?php endif ?>
</div>
</section>
<!--/affiliates-->
<!--twitter feed-->
<section id="twitter-feed">
<div class="row">
<div class="small-12 columns">
	<div id="twitter-slider">
		<?php
		/*
		<div class="slick-list draggable" tabindex="0">
			<div class="slick-track" style="opacity: 1; width: 3582px;">
				<div class="slide slick-slide" data-slick-index="0" style="width: 1194px; position: relative; left: 0px; top: 0px; z-index: 800; opacity: 0;"><div class="vcenter"><p class="tweet">The latest form the Evil Diaries: "Spoofing" - Master Investor Magazine <a href="http://t.co/F6tYI66ajZ" data-expanded-url="http://ow.ly/M0iK4" target="_blank" title="http://ow.ly/M0iK4" data-scribe="element:url"><span>http://</span><span>ow.ly/M0iK4</span><span></span><span><span>&nbsp;</span></span></a></p></div></div>
</div>
</div>

<button type="button" data-role="none" class="slick-prev" style="display: block;">Previous</button>
<button type="button" data-role="none" class="slick-next" style="display: block;">Next</button>
*/ ?>
</div>
</div>
</div>
</section>
<!--/twitter feed-->
<section id="footer-nav" class="row">
		<div class="small-12 medium-3 columns">
			<nav>
				<h4><a href="#">For You</a></h4>
				<?php wp_nav_menu( array(
		'theme_location' => 'footer-you-menu',
		'menu_id'=> 'footer-you-menu',
		'container' => 'nav',
		'container_class' => '',
		'after' => '' ) ); ?>
	</nav>
</div>
		<div class="small-12 medium-3 columns">
			<nav>
				<h4><a href="#">For Business</a></h4>
				<?php wp_nav_menu( array(
		'theme_location' => 'footer-business-menu',
		'menu_id'=> 'footer-business-menu',
		'container' => 'nav',
		'container_class' => '',
		'after' => '' ) ); ?>
	</nav>
		</div>
			<div class="small-12 medium-3 columns">
			<nav>
				<h4><a href="#">Our Team</a></h4>
				<ul>
				<?php
$args = array(
	'post_type'=>'cpt_team',
	'post_status' => 'publish',
	'posts_per_page' => -1,
	'orderby' => 'menu_order',
	'order' => 'ASC'
	);
	query_posts($args);
	if(have_posts()) :
		while (have_posts() ) : the_post(); 
	?>
	<li><a href="<?php the_permalink() ?>" title="<?php the_title() ?>"><?php the_title() ?></a></li>
<?php endwhile ?>
<?php endif ?>
</ul>
	</nav>
		</div>
			<div class="small-12 medium-3 columns">
			<nav>
				<h4><a href="#">About</a></h4>
				<?php wp_nav_menu( array(
		'theme_location' => 'footer-about-menu',
		'menu_id'=> 'footer-about-menu',
		'container' => 'nav',
		'container_class' => '',
		'after' => '' ) ); ?>
	</nav>
		</div>
</section>
<section id="footer-base">
<div class="row">
	<div class="small-12 columns">
<h4>REGISTERED OFFICE LEEDS</h4>
<p><small><span>33 St. Pauls Street, Leeds, LS1 2JJ</span><span>DX: 706957, Leeds Park Square</span><span>TELEPHONE <a href="tel:+441132449931">+44 (0) 113 244 9931</a></span><span>FAX +44 (0) 113 297 1872</span></small></p>
<p><small>This firm is regulated by The Solicitors Regulation Authority. SRA 440411. A list of members is available at the registered office. Levi Solicitors LLP is a limited liability partnership. Registered No. 0C316402. The term "partner" if used, denotes a member of Levi Solicitors LLP or an employee or consultant of Levi LLP with equivalent standing and qualifications.</small></p>
	</div>
</div>
</section>
</footer>
<!--/footer-->
</body>
</html>