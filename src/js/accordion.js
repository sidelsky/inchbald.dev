/**
* Table data
*/

var cssClasses = require('./config').cssClasses;

var Accordion = function Accordion($elem) {

    this.$elem = $elem;
    this.$open = cssClasses.isOpen;
    this.$tab = $('.o-accordion__tab', this.$elem);
    this.$panel = $('.o-accordion__inner', this.$elem);

    this._attachHandlers();

};


/*  Attach handler event
 -----------------------------------*/
Accordion.prototype._attachHandlers = function($elem) {

    var _this = this;

    _this.$tab.on('click', function(event) {

        event.preventDefault();

        $this = $(this);

        $this.find(_this.$panel).slideToggle(200);

        $this.toggleClass(_this.$open);


    });


};


/*  Returns a constructor
 -----------------------------------*/
module.exports = Accordion;
