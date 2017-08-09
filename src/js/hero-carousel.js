/* global require */
/* global window */
/* global site_data */
/* jshint -W097 */

//"use strict";
//Slick Slider

var slick = require('slickJS');

(function($){

    var $heroCarouselBackgroundImage = $('.o-hero-carousel__inner', '[data-hero-carousel]'),
        $heroCarouselControls = $('.o-hero-carousel__content__inner', '[data-hero-carousel]');

        /**
        * Hero carousel controls
        */
        $heroCarouselControls.slick({
                infinite: true,
                slidesToShow: 1,
                slidesToScroll: 1,
                asNavFor: $heroCarouselBackgroundImage,
                prevArrow: '.o-hero-carousel__controls__navigation--prev',
                nextArrow: '.o-hero-carousel__controls__navigation--next',
            });

        /**
        * Hero carousel background image
        */
        $heroCarouselBackgroundImage.slick({
            infinite: true,
            slidesToShow: 1,
            slidesToScroll: 1,
            asNavFor: $heroCarouselControls,
            arrows: false
        });

}(jQuery));
