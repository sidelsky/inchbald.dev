<?php
namespace BTMSimpleSocialSharing;


class Installer
{

    function __construct()
    {
        //Create Database Tables
        $this->createDatabase();
    }

    private function createDatabase()
    {
        global $wpdb;

        $table_name = $wpdb->prefix . 'social_sharing_counts';

        $charset_collate = $wpdb->get_charset_collate();

        $sql =  'CREATE TABLE '.$table_name.' '.
                '(`url` VARCHAR(255) NOT NULL, '.
                '`last_updated` TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, '.
                '`twitter` SMALLINT UNSIGNED NOT NULL, '.
                '`facebook` SMALLINT UNSIGNED NOT NULL, '.
                '`pinterest` SMALLINT UNSIGNED NOT NULL, '.
                '`linkedin` SMALLINT UNSIGNED NOT NULL, '.
                '`stumbleupon` SMALLINT UNSIGNED NOT NULL, '.
                'PRIMARY KEY (`url`))';


        require_once( ABSPATH . 'wp-admin/includes/upgrade.php' );
        dbDelta( $sql );

    }
}