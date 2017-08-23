/* global require */
/* global window */
/* global site_data */
/* jshint -W097 */

var waypoints = require('dynamics');

var mobileNavigation = (function() {

    //"use strict";

    var cssClasses = require('./config').cssClasses,
        is_active = cssClasses.isActive,
        $this,
        $overlay,
        $menuItem,
        $body = $('body'),
        $button = $('.button', '.overlay__content'),
        $contactButton = $('.contact-button'),
        $hamburgerMenu = $('[data-hamburger-menu]'),
        $window = $(window);

    // debounce function - https://davidwalsh.name/javascript-debounce-function
    function debounce(func, wait, immediate) {
        var timeout;
        return function() {
            var context = this,
                args = arguments;
            var later = function() {
                timeout = null;
                if (!immediate) func.apply(context, args);
            };
            var callNow = immediate && !timeout;
            clearTimeout(timeout);
            timeout = setTimeout(later, wait);
            if (callNow) func.apply(context, args);
        };
    }

    function hamburgerMenuActive(el) {

        $this = $(this);
        $body.toggleClass(is_active);

        show();

        return false;

    }

    // get window width
    function windowWidth() {

        width = $window.width();

        if (width > 1280) {
            $body.removeClass(is_active);
        }

    }

    function show() {

        var items = $('#mobile-navigation').find('.menu-item');

        // Animate each line individually
        for (var i = 0; i < items.length; i++) {

            var item = items[i];

            // Define initial properties
            dynamics.css(item, {
                opacity: 0,
                translateX: 20
            });

            // Animate to final properties
            dynamics.animate(item, {
                opacity: 1,
                translateX: 0
            }, {
                type: dynamics.spring,
                frequency: 300,
                friction: 135,
                duration: 1000,
                delay: 250 + i * 40,

            });
        }

    }

    // Contact button on click
    $contactButton.on('click', function(){
        $body.removeClass(is_active);
    });


    $window.on('resize orientationchange', debounce(function() {
        windowWidth();
    }, 500));

    $hamburgerMenu.on('click', hamburgerMenuActive);

}());
