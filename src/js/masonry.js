/* global require */
/* global window */
/* global site_data */
/* jshint -W097 */

var $ = require('isotope');

(function($){

    var $masonryGrid = $('[data-masonry-grid]'),
        $masonryGridItem = ( '.masonry-grid__item', $masonryGridItem),
        $dimensions = 305;

    $masonryGrid.isotope({
      itemSelector: $masonryGridItem,
      masonry: {
        columnWidth: $dimensions
      }
    });

}(jQuery));
