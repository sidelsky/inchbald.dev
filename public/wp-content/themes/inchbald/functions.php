<?php

    // update_option('siteurl','http://79.170.40.173/inchbald.co.uk/');
    // update_option('home','http://79.170.40.173/inchbald.co.uk/');

    /**
    * Require all functions within the functions folder
    */
    function getFunctions() {

        $folder = '/functions/*.php';
        $files = glob(dirname(__FILE__) . $folder);

        foreach( $files as $file ) {
            require_once( $file );
        }

    }

    getFunctions();

?>
