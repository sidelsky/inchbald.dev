/* global require */
/* global window */
/* global site_data */
/* jshint -W097 */

//Slick Slider
var remodal = require('remodal');
var froogaloop = require('froogaloop');

(function(){

    var iframe = $('.u-video-wrapper iframe')[0],
        player = $f(iframe);

        //Open model
        $(document).on('opened', '.remodal', function () {

            player.api('play');

        });

        //Close model
        $(document).on('closed', '.remodal', function (e) {

             player.api('pause');

        });

}());
