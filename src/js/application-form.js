/* global require */
/* global window */
/* global site_data */
/* jshint -W097 */


(function($){

    var $button = $('[data-apply-button]'),
        $form = $('[data-application-form]'),
        time = 250,
        $formID = $("#form"),
        $body = $('html, body'),
        $close = $('[data-close-icon]');

        $button.on('click', function(event){
            event.preventDefault();
            $form.slideToggle(time);

            $body.animate({
                scrollTop: $formID.offset().top -200
            }, 1000);

        });

        $close.on('click', function(event){
            event.preventDefault();

            $form.slideUp(time);

        });

}(jQuery));
