<?php
/**
 * The template for displaying Comments
 *
 * The area of the page that contains comments and the comment form.
 *
 * @package WordPress
 * @subpackage Kempstonparkesco_Theme
 * @since Kempstonparkesco 1.0
 */

/*
 * If the current post is protected by a password and the visitor has not yet
 * entered the password we will return early without loading the comments.
 */
if ( post_password_required() ) {
	return;
}
?>

<section id="comments" class="box-content">

	<?php if ( have_comments() ) : ?>

	<h3 class="comments-title">
		<?php
			printf( _n( 'One comment on &ldquo;%2$s&rdquo;', '%1$s comments on &ldquo;%2$s&rdquo;', get_comments_number(), 'kempstonparkesco' ),
				number_format_i18n( get_comments_number() ), get_the_title() );
		?>
	</h3>

	<?php if ( get_comment_pages_count() > 1 && get_option( 'page_comments' ) ) : ?>
	<nav id="comment-nav-above" class="navigation comment-navigation" role="navigation">
		<h1 class="screen-reader-text"><?php _e( 'Comment navigation', 'kempstonparkesco' ); ?></h1>
		<div class="nav-previous"><?php previous_comments_link( __( '&larr; Older Comments', 'kempstonparkesco' ) ); ?></div>
		<div class="nav-next"><?php next_comments_link( __( 'Newer Comments &rarr;', 'kempstonparkesco' ) ); ?></div>
	</nav><!-- #comment-nav-above -->
	<?php endif; // Check for comment navigation. ?>

	<ul class="comment-list">
		<?php
			wp_list_comments( array(
				'style'      => 'li',
				'short_ping' => true,
				'avatar_size'=> 34,
			) );
		?>
	</ul><!-- .comment-list -->

<?php
$commenter = wp_get_current_commenter();
$req = get_option( 'require_name_email' );
$aria_req = ( $req ? " aria-required='true'" : '' );
$required_text = 'All fields marked * are required.';
?>
	<?php if ( get_comment_pages_count() > 1 && get_option( 'page_comments' ) ) : ?>
	<nav id="comment-nav-below" class="navigation comment-navigation" role="navigation">
		<h1 class="screen-reader-text"><?php _e( 'Comment navigation', 'kempstonparkesco' ); ?></h1>
		<div class="nav-previous"><?php previous_comments_link( __( '&larr; Older Comments', 'kempstonparkesco' ) ); ?></div>
		<div class="nav-next"><?php next_comments_link( __( 'Newer Comments &rarr;', 'kempstonparkesco' ) ); ?></div>
	</nav><!-- #comment-nav-below -->
	<?php endif; // Check for comment navigation. ?>

	<?php if ( ! comments_open() ) : ?>
	<p class="no-comments"><?php _e( 'Comments are closed.', 'kempstonparkesco' ); ?></p>
	<?php endif; ?>

	<?php endif; // have_comments() ?>
	<?php
	$fields  =array(
		'author' => '<p class="comment-form-author required"><input id="author" name="author" placeholder="Name" type="text" value="' . esc_attr( $commenter['comment_author'] ) .
    '" size="30"' . $aria_req . ' /></p>',
		'email' => '<p class="comment-form-email required"><input id="email" placeholder="Email Address" name="email" type="text" value="' . esc_attr(  $commenter['comment_author_email'] ) .
    '" size="30"' . $aria_req . ' /></p>',
    	 'url' => '<p class="comment-form-url"><input id="url" name="url" type="text" placeholder="Website" value="' . esc_attr( $commenter['comment_author_url'] ) . '" size="30" /></p>'

		);
	$args = array(
		'title_reply' => '<strong>Leave a reply</strong>',
		'comment_notes_after' => '',
		'fields' => apply_filters( 'comment_form_default_fields', $fields ),
		'comment_field' => '<p class="comment-form-comment required"><textarea id="comment" name="comment" cols="50" rows="10" placeholder="Comment"></textarea></p>',
		'comment_notes_before' => '<p class="comment-notes"><small>' . __( 'Your email address will not be published.' ) . '</small></p>',
		'comment_notes_after' => '<p class="comment-notes"><small>' . ( $req ? $required_text : '' ) . '</small></p>'
		);
	comment_form($args); ?>

</section><!-- #comments -->
