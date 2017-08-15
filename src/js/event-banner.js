/* global require */
/* global window */
/* global site_data */
/* jshint -W097 */

//"use strict";
//Slick Slider

var slick = require('slickJS');

(function($){

    var $window = $(window),
        slicked = null,
        desktop = 1024,
        tablet = 768,
        mobile = 540;

        function init() {
            windowWidth();
        }


        /**
        * Event banner
        */
        function createSlick(){
            $('[data-event-banner]').not('.slick-initialized').slick({
                infinite: true,
                dots: false,
                slidesToShow: 1,
                slidesToScroll: 1,
                autoplay: false,
                cssEase: 'linear',
                prevArrow: '.o-event-banner__controls--prev',
                nextArrow: '.o-event-banner__controls--next',

                responsive: [
                {
                  breakpoint: 480,
                  settings: {
                    arrows: false,
                    slidesToShow: 1,
                    dots: true
                  }
                }
              ]

            });
        }


        createSlick();

        //Now it will not throw error, even if called multiple times.
        $(window).on( 'resize', createSlick );



}(jQuery));
