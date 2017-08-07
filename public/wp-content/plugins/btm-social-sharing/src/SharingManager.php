<?php
/**
 *
 * Main class to control front-end sharing
 *
 */

namespace BTMSimpleSocialSharing;


class SharingManager {

    protected $plugin_directory;
    protected $tableDB = 'social_sharing_counts';
    protected $frequency = SHARE_CACHE_FREQUENCY;

    public function __construct( $plugin_directory ) {
        $this->plugin_directory         = $plugin_directory;
        add_shortcode( 'sociallinks', array( $this, 'sociallinks_shortcode' ) );
        add_action( 'wp_ajax_get_sharing_count', array ($this, ' getSharingCountAJAX') );
        add_action( 'wp_ajax_nopri_get_sharing_count', array ($this, ' getSharingCountAJAX') );
    }

    function sociallinks_shortcode( $atts, $content = null ) {
        $a = shortcode_atts( array(
            'template' => '/templates/linklist.php',
            'fetch_counts' => 1

        ), $atts );



        $templatePath = $this->locateTemplate($a['template']);

        if ( $templatePath ) {
            ob_start();
            $socialLinks = $this->getSharingLinks();
            if ($a['fetch_counts'])
            {
                $shared = $this->getSharingCountNonAJAX();
            }

            include($templatePath);
            $results = ob_get_contents();


            ob_end_clean();
        }

        return $results;
    }

    function getSharingCountNonAJAX()
    {
        global $wpdb;
        global $post;

        $url = get_permalink($post);
        $results = $this->getShareCount($url);

        return $results;
    }

    function getSharingCountAJAX()
    {
        if (defined('DOING_AJAX') && DOING_AJAX)
        {
            global $wpdb;

            $url =  $_POST['url'];

            $results = $this->getShareCount($url);
            echo json_encode($results);
        }
        wp_die();

    }

    function getShareCount($url)
    {
        $table = $wpdb->prefix.$this->tableDB;
        $results = array (
            //'twitter' => 0,
            'facebook' => 0,
            'pinterest' => 0,
            'linkedin' => 0,
            'stumbleupon' => 0
        );
        //Check in the database first

        $counters = $wpdb->get_row( $wpdb->prepare("SELECT * FROM {$table} WHERE url = %s AND last_updated + INTERVAL %d HOUR > NOW()", $url, $this->frequency));


        if (null !== $counters )
        {
            //We have the data
            //$results['twitter'] = $counters->twitter;
            $results['facebook'] = $counters->facebook;
            $results['pinterest'] = $counters->pinterest;
            $results['linkedin'] = $counters->linkedin;
            $results['stumbleupon'] = $counters->stumbleupon;



        } else {

            //$twitter = $this->getTwitterShares($url);
            $facebook = $this->getFBShares($url);
            $pinterest = $this->getPinterestPins($url);
            $linkedIn = $this->getLIShares($url);
            $stumbleUpon = $this->getStumbles($url);
            $wpdb->replace(
                $table,
                array(
                    'url' => trim($url),
                    'facebook' => $facebook,
                    'pinterest' => $pinterest,
                    'linkedin' => $linkedIn,
                    'stumbleupon' => $stumbleUpon,

                ),
                array(
                    '%s',
                    '%d',
                    '%d',
                    '%d',
                    '%d'
                )
            );
        }

        return $results;
    }

    function getStumbles($url)
    {
        $endpointURL = 'http://www.stumbleupon.com/services/1.01/badge.getinfo?url=';
        $result = $this->curl($endpointURL.$url);
        $result = json_decode($result, true);
        if (isset ($result['result']['views'])) return $result['result']['views'];
        else return 0;
    }

    function getLIShares($url)
    {
        $endpointURL = 'https://www.linkedin.com/countserv/count/share?format=json&url=';
        $result = $this->curl($endpointURL.$url);
        $result = json_decode($result, true);
        return $result['count'];
    }

    function getPinterestPins($url)
    {
        $endpointURL = 'http://api.pinterest.com/v1/urls/count.json?callback%20&url=';
        $result = $this->curl($endpointURL.$url);
        $result = substr($result, strpos($result, '('));

        $result = json_decode(trim($result,'();'), true);
        return $result['count'];
    }

    function getFBShares($url)
    {
        $endpointURL = 'https://graph.facebook.com/fql?q=select%20%20like_count%20from%20link_stat%20where%20url=';
        $result = $this->curl($endpointURL.'"'.urlencode($url).'"');
        $result = json_decode($result, true);

        return $result['data'][0]['like_count'];
    }

    /**function getTwitterShares($url)
    {
    $endpointURL = 'https://api.twitter.com/1/urls/count.json?url=';
    $result = $this->curl($endpointURL.$url);
    $result = json_decode($result, true);
    echo $result;
    return $result['count'];
    }**/


    function getSharingLinks()
    {
        global $post;

        $result = '';
        $image = wp_get_attachment_image_src( get_post_thumbnail_id( $post->ID ), 'single-post-thumbnail' );
        $featured = $image[0];
        $sharing_links = array (
            'facebook' => 'http://www.facebook.com/sharer.php?u='.get_permalink($post),
            'twitter' => 'https://twitter.com/share?url='.get_permalink($post).'&text='.urlencode(get_the_title($post)),
            'googleplus' => 'https://plus.google.com/share?url='.get_permalink($post),
            'pinterest' => 'https://pinterest.com/pin/create/bookmarklet/?media='.$featured.'&url='.get_permalink($post).'&description='.urlencode(get_the_title($post)),
            'linkedin' => 'http://www.linkedin.com/shareArticle?url='.get_permalink($post).'&title='.urlencode(get_the_title($post)),
            'buffer' => 'http://bufferapp.com/add?text='.urlencode(get_the_title($post)).'&url='.get_permalink($post),
            'digg' => 'http://digg.com/submit?url='.get_permalink($post).'&title='.urlencode(get_the_title($post)),
            'tumblr' => 'http://www.tumblr.com/share/link?url='.get_permalink($post).'&name='.urlencode(get_the_title($post)).'&description='.urlencode(get_the_excerpt()),
            'reddit' => 'http://reddit.com/submit?url='.get_permalink($post).'&title='.urlencode(get_the_title($post)),
            'stumbleupon' => 'http://www.stumbleupon.com/submit?url='.get_permalink($post).'&title='.urlencode(get_the_title($post)),
            'delicious' => 'https://delicious.com/save?v=5&url='.get_permalink($post).'&title='.urlencode(get_the_title($post)),
            'evernote' => 'http://www.evernote.com/clip.action?url='.get_permalink($post).'&title='.urlencode(get_the_title($post)),
            'email' => '\'mailto:?subject='.urlencode(get_the_title($post)).'&body=Check out this site: '. get_permalink($post) .'" title="Share by Email\'',
            'wordpress' => 'http://wordpress.com/press-this.php?u='.get_permalink($post).'&t='.urlencode(get_the_title($post)).'&s='.urlencode(get_the_excerpt()).'&i='.$featured,
            'pocket' => 'https://getpocket.com/save?url='.get_permalink($post).'&title='.urlencode(get_the_title($post)),
            'whatsapp' => 'whatsapp://send?text='.urlencode(get_the_title($post))." ".get_permalink($post)
        );

        return $sharing_links;
    }
    /**
     * Check for the applicable template in the child theme, then parent theme, and in the plugin dir as a last resort
     * and output it if it was located
     *
     * @since 1.0
     *
     * @param array $template_names The potential template names in order of precedence
     * @param bool $load Whether to load the template file
     * @param bool $require_once Whether to require the template file once
     *
     * @return bool|string The location of the applicable template file
     */

    function locateTemplate( $template_name ) {

        // default to not found
        $located = false;

        $template_name = ltrim( $template_name, '/' );

        // check the child theme first
        $maybe_child_theme = trailingslashit( get_stylesheet_directory() ) . $template_name;

        if ( file_exists( $maybe_child_theme ) ) {
            $located = $maybe_child_theme;
        }

        if ( ! $located ) {
            // check parent theme
            $maybe_parent_theme = trailingslashit( get_template_directory() ) . $template_name;

            if ( file_exists( $maybe_parent_theme ) ) {
                $located = $maybe_parent_theme;

            }
        }

        //Still not found? Use the plugin directory
        if ( ! $located ) {
            // check parent theme
            $maybe_plugin =  $this->plugin_directory . $template_name;

            if ( file_exists( $maybe_plugin ) ) {
                $located = $maybe_plugin;

            } else echo "Not plugin ". $maybe_plugin."<br>";
        }

        return $located;
    }
    private function curl($url){
        error_reporting(-1);
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL,$url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER,1);
        curl_setopt($ch, CURLOPT_USERAGENT, "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30" );
        curl_setopt($ch, CURLOPT_REFERER, $url);

        $return = curl_exec($ch);
        curl_close ($ch);
        return $return;
    }
}