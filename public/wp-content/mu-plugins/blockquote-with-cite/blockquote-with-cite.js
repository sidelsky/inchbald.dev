(function() {
    tinymce.create("tinymce.plugins.specialBlockquoteShortcode", {

        //url argument holds the absolute url of our plugin directory
        init : function(ed, url) {
            //add new button
            ed.addButton('specialBlockquote', {
                title : 'Blockquote with cite',
                cmd : 'specialBlockquote_command',
                image : '../wp-content/mu-plugins/blockquote-with-cite/icon/quote-icon.svg'
            });

            //button functionality.
            ed.addCommand("specialBlockquote_command", function() {
                var $cite = "cite='Enter a cite'",
                    $selected_text = '[blockquote '+ $cite +' ] Enter your blockquote here... [/blockquote]',
                    $return_text = $selected_text;

                ed.execCommand("mceInsertContent", 0, $return_text);
            });
        },
    });

    tinymce.PluginManager.add("specialBlockquoteShortcode", tinymce.plugins.specialBlockquoteShortcode);
})();
