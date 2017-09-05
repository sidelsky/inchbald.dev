/* global require */
/* global window */
/* global site_data */
/* jshint -W097 */

var $ = require('isotope');
var $ = require('bbq');

(function($) {

    // init Isotope
    // var $grid = $('[data-isotope]').isotope({
    //
    //     itemSelector: '.filter-item',
    //
    // });
    var $container = $('[data-isotope]');

    var initialOptions = {

      itemSelector : '.filter-item'
    //   masonry: {
    //     columnWidth: 80
    //   },
    //   getSortData: {
    //     subject: function( $elem ) {
    //       return $elem.attr('data-subject');
    //     },
    //     type: function( $elem ) {
    //       return $elem.attr('data-type');
    //     }
    //   }

    };

    // build a hash for all our options
    var options = {
      // special hash for combination filters
      comboFilters: {}
    };

    // store filter for each group
    //var filters = {};

    $('.filters').on( 'click', '.item', function(event) {

        event.preventDefault();

        var $this = $(this);

        // get group key
        var $buttonGroup = $this.parents('.button-group');
        var filterGroup = $buttonGroup.attr('data-filter-group');

        options.comboFilters[ filterGroup ] = $this.attr('data-filter');
        $.bbq.pushState( options );

    });

    var location = window.location;
    var $comboFilterOptionSets = $('.filters .button-group');


    function getComboFilterSelector( comboFilters ) {
      // build filter
      var isoFilters = [];
      var filterValue, $link, $optionSet;
      for ( var prop in comboFilters ) {
        filterValue = comboFilters[ prop ];
        isoFilters.push( filterValue );
        // change selected combo filter link
        $optionSet = $comboFilterOptionSets.filter('[data-filter-group="' + prop + '"]');
        $link = $optionSet.find('a[data-filter-value="' + filterValue + '"]');

      }
      var selector = isoFilters.join('');
      return selector;
    }


    $( window ).on( 'hashchange', function() {

        function callWindowLoad() {

            // get options from hash
            if ( location.hash ) {
              $.extend( options, $.deparam.fragment( location.hash, true ) );
            }
            // build options from hash and initial options
            var isoOptions = $.extend( {}, initialOptions, options );

            if ( options.comboFilters ) {
              isoOptions.filter = getComboFilterSelector( options.comboFilters );
            }

            // change selected link for sortBy
            if ( options.sortBy ) {
              var $link = $sortBy.find('a[data-option-value="' + options.sortBy + '"]');
            }

            $container.isotope( isoOptions );

        }

        setTimeout(callWindowLoad, 100);

    }).trigger( 'hashchange' ); // trigger hashchange to capture initial hash options

}(jQuery));
