<?php

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
