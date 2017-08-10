/* global require */
/* global window */
/* global site_data */
/* jshint -W097 */

//"use strict";
//Slick Slider

var slick = require('slickJS');

(function($){

    var $eventBanner = $('[data-event-banner]');

        /**
        * Event banner
        */
        $eventBanner.slick({
                infinite: true,
                slidesToShow: 1,
                slidesToScroll: 1,
                prevArrow: '.o-event-banner__controls--prev',
                nextArrow: '.o-event-banner__controls--next',
            });

}(jQuery));
