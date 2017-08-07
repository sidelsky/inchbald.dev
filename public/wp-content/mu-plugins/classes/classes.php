<?php

    /*
    Plugin Name: Load classes
    Author: Errol Sidelsky
    */

    /**
    * Require all classes within the classes folder
    */
    function getClasses() {

        $folder = '/class-list/*.php';
        $files = glob(dirname(__FILE__) . $folder);

        foreach( $files as $file ) {
            require_once( $file );
        }

    }

    getClasses();


 ?>
