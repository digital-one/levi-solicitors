<?php /*
<?php if (is_category()) { ?>
					
					<h1 class="archive-title">
					
						<span><?php _e( 'Posts Categorized:' ); ?></span> <?php single_cat_title(); ?>
					
					</h1>

				<?php } elseif (is_tag()) { ?>
					
					<h1 class="archive-title">
					
						<span><?php _e( 'Posts Tagged:' ); ?></span> <?php single_tag_title(); ?>
					
					</h1>

				<?php } elseif (is_author()) {
					global $post;
					$author_id = $post->post_author;
				?>
				
				<h1><span><?php _e( 'Posts By:' ); ?></span> <?php the_author_meta('display_name', $author_id); ?></h1>
					
				<?php } elseif (is_day()) { ?>
					
				<h1><span><?php _e( 'Daily Archives:' ); ?></span> <?php the_time('l, F j, Y'); ?></h1>

				<?php } elseif (is_month()) { ?>
				
				<h1><span><?php _e( 'Monthly Archives:' ); ?></span> <?php the_time('F Y'); ?></h1>

				<?php } elseif (is_year()) { ?>
				
				<h1><span><?php _e( 'Yearly Archives:' ); ?></span> <?php the_time('Y'); ?></h1>
				
				<?php } ?>

				<?php if (have_posts()) : while (have_posts()) : the_post(); ?>

					<!-- START: Job summary (partials/content-job-loop)  -->
					
						<?php get_template_part( 'partials/content', 'post-loop' ); ?>

					<!-- END: Job listing  -->

				<?php endwhile; ?>

				<?php else : ?>

			<?php endif ?>
			<?php posts_nav_link(' - ', '&laquo; Prev', 'Next &raquo;'); ?>
		*/ ?>
<?php get_template_part('archive-cpt_news') ?>