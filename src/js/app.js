/* global require */
/* global window */
/* global site_data */
/* jshint -W097 */

"use strict";
var $ = require('jquery');

/*------------------------------------*\
	Sticky logo
\*------------------------------------*/
require('./search-form');

/*------------------------------------*\
	Hero carousel
\*------------------------------------*/
require('./hero-carousel');

/*------------------------------------*\
	Event banner
\*------------------------------------*/
require('./event-banner');

/*------------------------------------*\
	Mobile navigaton
\*------------------------------------*/
require('./mobile-navigation');

/*------------------------------------*\
	remodal
\*------------------------------------*/
require('./remodal');

/*------------------------------------*\
	Subpahe hero paralax
\*------------------------------------*/
require('./subpage-hero-paralax');

/*------------------------------------*\
	Subpahe hero paralax
\*------------------------------------*/
require('./isotope-filter');

/*------------------------------------*\
	Filter select
\*------------------------------------*/
var $filterSelect = $('[data-filter-select]');

    if ($filterSelect.length) {

        var FilterSelect = require('./filter-select');

        $filterSelect.each(function(i, elem) {
            new FilterSelect($(elem));
        });

    }


    /*------------------------------------*\
    	Accordion
    \*------------------------------------*/
    var $accordion = $('[data-accordion]');

        if ($accordion.length) {

            var Accordion = require('./accordion');

            $accordion.each(function(i, elem) {
                new Accordion($(elem));
            });

        }
