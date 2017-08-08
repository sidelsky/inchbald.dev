/* global require */
/* global window */
/* global site_data */
/* jshint -W097 */

var $ = require('jquery'),
    cssClasses = require('./config').cssClasses;

(function() {

    // init
    function init() {

        searchClick();

    }

    var visible = cssClasses.isVisible,
        $searchIcon = $('#search-button'),
        $searchForm = $('#search-form'),
        $headerWrapper = $('#header-wrapper'),
        $searchFormInput = $('#search-form input');

    function searchClick() {

        $searchIcon.on('click', function(event) {
            event.preventDefault();
            $headerWrapper.toggleClass(visible);
            $searchFormInput.focus();
        });

    }


    init();

}());
