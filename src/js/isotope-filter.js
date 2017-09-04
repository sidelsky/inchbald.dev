/* global require */
/* global window */
/* global site_data */
/* jshint -W097 */

var $ = require('isotope');

(function($) {

    // init Isotope
    var $grid = $('[data-isotope]').isotope({

      itemSelector: '.filter-item',

    });

    // store filter for each group
    var filters = {};

    $('.filters').on( 'click', '.item', function() {

      var $this = $(this);

      // get group key
      var $buttonGroup = $this.parents('.button-group');
      var filterGroup = $buttonGroup.attr('data-filter-group');

      // set filter for group
      filters[ filterGroup ] = $this.attr('data-filter');

      // combine filters
      var filterValue = concatValues( filters );

      // set filter for Isotope
      $grid.isotope({ filter: filterValue });

    });

    // change is-checked class on buttons
    $('.button-group').each( function( i, buttonGroup ) {

      var $buttonGroup = $( buttonGroup );

      $buttonGroup.on( 'click', 'button', function() {

        $buttonGroup.find('.is-checked').removeClass('is-checked');
        $( this ).addClass('is-checked');

      });

    });

    // flatten object by concatting values
    function concatValues( obj ) {
      var value = '';
      for ( var prop in obj ) {
        value += obj[ prop ];
      }
      return value;
    }

// // init Isotope
// var $grid = $('[data-isotope]').isotope({
//
//     itemSelector: '.filter-item',
//     masonry: {
//         columnWidth: 10
//     }
//
// });
//
// // store filter for each group
// var filters = {};
//
// $('.filters').on( 'click', '.item', function() {
//
//   var $this = $(this);
//
//   // get group key
//   var $buttonGroup = $this.parents('.button-group');
//
//   var $filterGroup = $buttonGroup.attr('data-filter-group');
//
//   // set filter for group
//   filters[ $filterGroup ] = $this.attr('data-filter');
//
//   // combine filters
//   var filterValue = concatValues( filters );
//
//   // set filter for Isotope
//   $grid.isotope({ filter: filterValue });
// });
//
//
// // flatten object by concatting values
// function concatValues( obj ) {
//   var value = '';
//   for ( var prop in obj ) {
//     value += obj[ prop ];
//   }
//   return value;
// }




/////
// external js: isotope.pkgd.js






}(jQuery));
