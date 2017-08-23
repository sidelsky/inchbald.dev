/**
* Table data
*/

var cssClasses = require('./config').cssClasses;

var FilterSelect = function FilterSelect($elem) {

    this.$elem = $elem;
    this.$open = cssClasses.isOpen;
    this.$title = $('.o-course-filter__title span', this.$elem);
    this.$menu = $('.o-course-filter__select-menu', this.$elem);
    this.$item = $('.o-course-filter__item', this.$elem);

    this._attachHandlers();

};


/*  Attach handler event
 -----------------------------------*/
FilterSelect.prototype._attachHandlers = function($elem) {

    var _this = this;

    _this.$title.on('click', function() {
        _this.$elem.toggleClass(_this.$open);
    });

    _this.$item.on('click', function() {
        var $itemContent = $(this).text();
        _this.$title.text($itemContent);
        _this.$elem.toggleClass(_this.$open);
    });

    _this.$menu.on('mouseleave', function(){

        if(_this.$elem.hasClass(_this.$open)) {

            console.log('has class');
            _this.$elem.toggleClass(_this.$open);

        } else {

            console.log('does not');

        }

    });


};


/*  Returns a constructor
 -----------------------------------*/
module.exports = FilterSelect;
