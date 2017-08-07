=== Plugin Name ===
Author: Irune Itoiz (contracting@irune.io)

Minimalist social media links and share counter plugin

== Description ==

Plugin to provide a list of links to share content on social media, share counters for facebook, linkedin, pinterest and stumbleupon, all without JS libraries or API calls.

== Installation ==

This section describes how to install the plugin and get it working.

e.g.

1. Upload the plugin files to the `/wp-content/plugins/` directory, or install the plugin through the WordPress plugins screen directly.
2. Activate the plugin through the 'Plugins' screen in WordPress

== Usage ==
* As a shortcocde: [sociallinks template="template-parts/sociallinks.php" fetch_counts=0]
* Inside a theme file, with do_shortcode:  echo do_shortcode('[sociallinks template="template-parts/sociallinks.php" fetch_counts=0]');
* Ajax endpoint:
    action: get_sharing_count
    url: http://domain.com/thepostwewanttocheck

    returns json array with keys
        'facebook'
        'pinterest
        'linkedin'
        'stumbleupon'

**Template Selection**
Default template: plugin_dir/templates/linklist.php

Alternatively, choose a file within your theme and pass it through the template attribute on the shortcode

**Share counts**
If you want not to fetch the share count, use fetch_counts=0 on the shortcode.

Shares are cached on the database for up to SHARE_CACHE_FREQUENCY hours (change it on social-sharing.php if needed).