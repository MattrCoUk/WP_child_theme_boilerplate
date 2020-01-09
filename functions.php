<?php
/**
 * 
 *    Styles
 *
 * 
 */
add_action( 'wp_enqueue_scripts', function () {
	
   $parent_style = 'parent-style'; // HTML meta tag ref
 
   wp_enqueue_style( $parent_style, get_template_directory_uri() . '/style.css' );
   
   wp_enqueue_style( 'child-style',
   
      get_stylesheet_directory_uri() . '/style.css',
      [$parent_style],
      wp_get_theme()->get('Version')
   );
});
