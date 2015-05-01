<?php

/**
 * Plugin Name: Levi Solicitors
 * Plugin URI: http://www.digital-one.co.uk
 * Description: Levi Solicitors Theme
 * Version: 0.1
 * Author: Neil Mills
 * Author URI: http://www.digital-one.co.uk
 * License: Private. Only Levi Solicitors are allowed to use this plugin
 */

    class levis {

        function __construct() {

        	//register custom post types
        	add_action( 'init', array($this,'register_cpt_news'), 0 );
            add_action( 'init', array($this,'register_cpt_team'), 0 );
            //register custom taxonomies
            // add_action('init',array($this,'register_cptax_question_category'),0);
           //  add_action('init',array($this,'register_cptax_location_service'),0);
            //columns
            add_filter('manage_edit-cpt_team_columns', array($this,'add_cpt_team_columns'));   
            add_action('manage_cpt_team_posts_custom_column',  array($this,'add_cpt_team_custom_columns'),10,2); 

            add_filter('manage_edit-cpt_news_columns', array($this,'add_cpt_news_columns'));   
            add_action('manage_cpt_news_posts_custom_column',  array($this,'add_cpt_news_custom_columns'),10,2); 


            //rewrites
            add_action('init', array($this,'add_cpt_news_rewrite_rules'),0);
			add_filter('query_vars',array($this, 'add_cpt_news_query_vars'),0);

			//image sizes
            add_action( 'init', array($this,'image_sizes'), 0 );
			add_filter('image_size_names_choose', array($this,'custom_image_sizes'),0);


			// Image sizes
            add_action( 'init', array($this,'image_sizes'), 0 );
            add_filter('image_size_names_choose', array($this,'custom_image_sizes'),0);
			

            if( is_admin() ) {



            }

    }




    function register_cpt_news() {

        $labels = array(
           	'name'                => _x( 'News', 'Post Type General Name', 'text_domain' ),
            'singular_name'       => _x( 'News', 'Post Type Singular Name', 'text_domain' ),
            'menu_name'           => __( 'News', 'text_domain' ),
            'parent_item_colon'   => __( 'Parent Article:', 'text_domain' ),
            'all_items'           => __( 'All News', 'text_domain' ),
            'view_item'           => __( 'View News', 'text_domain' ),
            'add_new_item'        => __( 'Add New Article', 'text_domain' ),
            'add_new'             => __( 'Add New Article', 'text_domain' ),
            'edit_item'           => __( 'Edit Article', 'text_domain' ),
            'update_item'         => __( 'Update Article', 'text_domain' ),
            'search_items'        => __( 'Search News', 'text_domain' ),
            'not_found'           => __( 'Not found', 'text_domain' ),
            'not_found_in_trash'  => __( 'Not found in Trash', 'text_domain' ),
        );
        $args = array(
            'label'               => __( 'cpt_news', 'text_domain' ),
            'description'         => __( 'News', 'text_domain' ),
            'labels'              => $labels,
            'supports'            => array( 'title', 'editor', 'excerpt', 'author', 'thumbnail','page-attributes' ),
            //'taxonomies'          => array( 'ciet_cuisine','ciet_allergen','ciet_diet' ),
            'hierarchical'        => true,
            'public'              => true,
            'show_ui'             => true,
            'show_in_menu'        => true,
            'show_in_nav_menus'   => true,
            'show_in_admin_bar'   => true,
            'menu_position'       => 5,
            'can_export'          => true,
            'has_archive'         => true,
            'rewrite'             => array('slug' => 'news/archive'),
            'exclude_from_search' => false,
            'publicly_queryable'  => true,
            'capability_type'     => 'page',
        );
        register_post_type( 'cpt_news', $args );
    }

    function register_cpt_team() {

        $labels = array(
            'name'                => _x( 'Team', 'Post Type General Name', 'text_domain' ),
            'singular_name'       => _x( 'Team Member', 'Post Type Singular Name', 'text_domain' ),
            'menu_name'           => __( 'Team', 'text_domain' ),
            'parent_item_colon'   => __( 'Parent Team Member:', 'text_domain' ),
            'all_items'           => __( 'All Team Members', 'text_domain' ),
            'view_item'           => __( 'View Team Member', 'text_domain' ),
            'add_new_item'        => __( 'Add New Team Member', 'text_domain' ),
            'add_new'             => __( 'Add New', 'text_domain' ),
            'edit_item'           => __( 'Edit Team Member', 'text_domain' ),
            'update_item'         => __( 'Update Team Member', 'text_domain' ),
            'search_items'        => __( 'Search Team Members', 'text_domain' ),
            'not_found'           => __( 'Not found', 'text_domain' ),
            'not_found_in_trash'  => __( 'Not found in Trash', 'text_domain' ),
        );
        $args = array(
            'label'               => __( 'cpt_team', 'text_domain' ),
            'description'         => __( 'Team Members', 'text_domain' ),
            'labels'              => $labels,
            'supports'            => array( 'title', 'editor', 'excerpt', 'author', 'thumbnail','page-attributes' ),
            //'taxonomies'          => array( 'ciet_cuisine','ciet_allergen','ciet_diet' ),
            'hierarchical'        => true,
            'public'              => true,
            'show_ui'             => true,
            'show_in_menu'        => true,
            'show_in_nav_menus'   => true,
            'show_in_admin_bar'   => true,
            'menu_position'       => 15,
            'can_export'          => true,
            'has_archive'         => true,
            'rewrite'             => array('slug' => 'team/archive'),
            'exclude_from_search' => false,
            'publicly_queryable'  => true,
            'capability_type'     => 'page',
        );
        register_post_type( 'cpt_team', $args );
    }


  

        function add_cpt_team_columns($columns){
        $columns = array(
           "cb" => "<input type=\"checkbox\" />",
           "title" => "Name",
           "job_title" => "Job Title",
           "date" => "Publish Date"
        );  
         return $columns;
        }

function add_cpt_team_custom_columns($column,$id){
        global $post;
        switch ($column){
            case "job_title":
           // $post = get_field('collection_brand',$id);
            echo get_field('team_job_title',$id);
            break;
               }
            } 



        function add_cpt_news_rewrite_rules(){ 
            add_rewrite_rule('^news/archive/pge/([^/]*)/?', 'index.php?pagename=news&pge=$matches[1]','top');
		}



function add_cpt_news_query_vars($public_query_vars) {
	  $public_query_vars[] = "pge";
	return $public_query_vars; 
}

function image_sizes(){
    add_image_size( 'header-image', 930, 300, true );
    add_image_size( 'large-image', 930, 930, false );
    add_image_size( 'square-image', 600, 600, true );
    add_image_size( 'profile-image', 145, 145, true );
    set_post_thumbnail_size( 200, 200,false); 
}

function custom_image_sizes($sizes) {
	
  unset( $sizes['medium']);
    unset( $sizes['large']);
  $myimgsizes = array(
    "header-image" => __("Header Image"),
    "square-image" => __("Square Image"),
    "profile-image" => __("Profile Image"),
    "large-image" => __("Large Image")
  );
     
       $newimgsizes = array_merge($sizes, $myimgsizes);
      return $newimgsizes;
}


//
}
     $levis = new levis();