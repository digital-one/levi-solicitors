<?php

function scripts_and_styles() {
   //only effect front-end of your website
	if (!is_admin() && $_SERVER['SCRIPT_NAME'] != '/wp-login.php') {
	
		
		// respond
		//wp_register_script( 'respondjs', get_stylesheet_directory_uri() . '/library/js/libs/min/respond.min.js', array('jquery'), null, false );
		//wp_enqueue_script( 'respondjs' );
		
		//jquery
	  wp_deregister_script( 'jquery' );
	  wp_register_script( 'jquery', "http" . ($_SERVER['SERVER_PORT'] == 443 ? "s" : "") . "://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js", false, null );
	  wp_enqueue_script( 'jquery' );


		// modernizr (without media query polyfill)
		wp_register_script( 'modernizr', get_stylesheet_directory_uri() . '/js/modernizr.js', array(), '2.5.3', false );
		wp_enqueue_script( 'modernizr' );

		//slick slider
	  	wp_register_script(  'slick', get_stylesheet_directory_uri() . '/js/slick/slick.min.js', array(), '1.4.1', false  );
	  	wp_enqueue_script( 'slick' );

		// modernizr 
		wp_register_script( 'modernizr', get_stylesheet_directory_uri() . '/js/modernizr.js', array(), null, false );
		wp_enqueue_script( 'modernizr' );

		//twitter fetcher
		wp_register_script( 'twitter_fetcher', get_stylesheet_directory_uri() . '/js/twitter-fetcher.js', array(), null, false );
  		wp_enqueue_script( 'twitter_fetcher' );

  		//easing
  		wp_register_script( 'easing', get_stylesheet_directory_uri() . '/js/jquery.easing.min.js', array(), null, false );
  		wp_enqueue_script( 'easing' );


  		//scroll to
		wp_register_script( 'scrollto', get_stylesheet_directory_uri() . '/js/jquery.scrollTo.min.js', array(), null, false );
  		wp_enqueue_script( 'scrollto' );


		// register main stylesheet
		wp_register_style( 'stylesheet', get_stylesheet_directory_uri() . '/css/style.css', array(), '', 'all' );
		wp_enqueue_style( 'stylesheet' );
		
		 //google maps api
	  wp_register_script( 'google_maps_api', "http" . ($_SERVER['SERVER_PORT'] == 443 ? "s" : "") . "://maps.google.com/maps/api/js?sensor=true", false, null );
	  wp_enqueue_script( 'google_maps_api' );

	  wp_register_script(  'gmap', get_stylesheet_directory_uri() . '/js/jquery.gmap.js', array(), null, false  );
	  wp_enqueue_script( 'gmap' );

	  wp_register_script( 'levi_scripts', get_stylesheet_directory_uri() . '/js/scripts.js', array(), null, false  );
		wp_enqueue_script( 'levi_scripts' );	
		
		//register styles for our theme
		//wp_register_style( 'respgrid', get_template_directory_uri() . '/css/foundation-grid.css', array(), 'all' );
		//wp_enqueue_style( 'respgrid' );
		
		//register selectbox
		wp_register_script( 'selectbox', get_stylesheet_directory_uri() . '/js/jquery.selectBox.js', array(), null, false);
		wp_enqueue_script( 'selectbox' );	

		
		//register all scripts
		
		

		wp_localize_script( 'allscripts', 'Map', array('lat' => 51.5196628,'lng' =>-0.0875072,'marker'=> get_template_directory_uri().'/images/marker.png'));

		
	}
}

// enqueue base scripts and styles
add_action('wp_enqueue_scripts', 'scripts_and_styles', 999);

// enqueue google fonts
function google_fonts() {
  wp_register_style('googleFonts', 'http://fonts.googleapis.com/css?family=Open+Sans:300,600,400');
  wp_enqueue_style( 'googleFonts');
}
function font_awesome(){
	 wp_register_style('fontAwesome', '//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css');
	 wp_enqueue_style( 'fontAwesome');
}

add_action('wp_print_styles', 'google_fonts');
add_action('wp_print_styles', 'font_awesome');



//Hide Admin Bar
show_admin_bar( false );


/** Register Navigation Menus
 **/

function register_menus() {
	  register_nav_menus(
	    array( 	'main-menu'	   => __( 'Main Menu' ),
	            'footer-you-menu' => __( 'Footer You Menu' ),
	            'footer-business-menu' => __( 'Footer Business Menu' ),
	            'footer-team-menu' => __( 'Footer Team Menu' ),
	            'footer-about-menu' => __( 'Footer About Menu' )
	   	)
	  );
	}
	
add_action( 'init', 'register_menus' );




class subMenu extends Walker_Nav_Menu {
      function end_el(&$output, $item, $depth=0, $args=array()) {
    	
	$args = array(
    		'post_type' => 'page',
    'child_of' => $item->object_id,
     'post_parent' => $item->object_id,
     'orderby' => 'menu_order',
     'order' => 'ASC'
     );
    	//if($pages  = get_posts($args)):
    	//	echo 'child='.count($pages).'<hr />';
    //	endif;
  	$query = new WP_Query( $args );
	$total = $query->found_posts;
	$half = ceil($total/2);
	$count=0;
	if ( $query->have_posts() ):
		
		$output.='<div class="sub-menu"><ul>';
        while ( $query->have_posts() ) : $query->the_post();
        $output.='<li><a href="'.get_permalink().'">'.get_the_title().'</a></li>';
           $count++;
           if($count==$half):
           	$output.='</ul><ul>';
           endif;
        endwhile;
    $output.='</ul>';
endif; 
 // $output .= "<div>kdkdkddkdkl</div></li>\n"; 
  //endif;
   //   $output .= apply_filters( 'walker_nav_menu_start_el', $output, $item, $depth, $args );

 wp_reset_postdata();    
  }
}



function style_heading($heading){
	$words = explode(' ',$heading);
	$total = count($words);
	$last = end($words);
	unset($words[$total-1]);
	$output = "";
	foreach($words as $word):
		$output.=$word.' ';
		endforeach;
		$output.='<strong>'.$last.'</strong>';
	return $output;
}






add_action( 'show_user_profile', 'show_custom_user_meta_fields', 0 );
		add_action( 'edit_user_profile', 'show_custom_user_meta_fields',0 );
		add_action( 'personal_options_update', 'save_custom_user_meta_fields',0);
		add_action( 'edit_user_profile_update', 'save_custom_user_meta_fields',0 );



function save_custom_user_meta_fields($user_id){

		   if ( !current_user_can( 'edit_user', $user_id ) )
          return false;

      		  update_user_meta( $user_id, 'cm_user_profile', $_POST['cm_user_profile'] );
      		  update_user_meta( $user_id, 'cm_user_job_title', $_POST['cm_user_job_title'] );
      		  update_user_meta( $user_id, 'cm_user_index', $_POST['cm_user_index'] );
	}

	function show_custom_user_meta_fields($user){
	$user_profile = get_the_author_meta( 'cm_user_profile', $user->ID);
	$user_job_title = get_the_author_meta( 'cm_user_job_title', $user->ID);
	$user_index = get_the_author_meta( 'cm_user_index', $user->ID) > -1 ? get_the_author_meta( 'cm_user_index', $user->ID) : 0;
		?>
		<h3>Profile</h3>
		<table class="form-table">
		<tbody>
		<tr class="user-description-wrap">
	<th><label for="description">Profile</label></th>
	<td>
		<textarea rows="10" cols="30" id="cm_user_profile" name="cm_user_profile"><?php echo $user_profile ?></textarea>

		</td>
</tr>
	<tr class="user-description-wrap">
	<th><label for="description">Job Title</label></th>
	<td>
		<input type="text" name="cm_user_job_title" id="cm_user_job_title" value="<?php echo $user_job_title ?>" class="regular-text">
</tr>
<tr class="user-description-wrap">
	<th><label for="description">Index Position</label></th>
	<td>
		<input type="text" name="cm_user_index" id="cm_user_index" value="<?php echo $user_index ?>" class="regular-text">
</tr>
</tbody></table>
<?php
	}
