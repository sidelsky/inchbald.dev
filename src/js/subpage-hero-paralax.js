
function homeParallax() {

    var top = $(this).scrollTop(),
        $subpageHero = $('[data-subpage-hero]'),
        $containerTop = $subpageHero.scrollTop();
        //$exclude = $('.m-cta-text-module--white-background, .m-cta-text-module--background-color'),
        //$hero_content = $('[data-hero-content]').not($exclude);

    //jQuery('.home #homeBanner #bannerText').css('transform', 'translateY(' + (-top/3) + 'px)');
    // $hero.css({
    //     'background-position': 'center ' + (-top / 2) + "px"
    // });

    $subpageHero.css({
        'background-position': 'center ' + (-top / 5) + "px"
    });

    // $hero_content.css({
    //     'opacity' : 1 - (top/500),
    //     'transform' : 'translateY(' + (+ top/6) + 'px)'
    // });

    // $hero_content.css({
    //     'opacity' : 1 - (top/500),
    //     'transform' : 'translateY(' + (+ top/6) + 'px)'
    // });


}


//Scroll events
function isMobile(){
    return (
        (navigator.userAgent.match(/Android/i)) ||
		(navigator.userAgent.match(/webOS/i)) ||
		(navigator.userAgent.match(/iPhone/i)) ||
		(navigator.userAgent.match(/iPod/i)) ||
		(navigator.userAgent.match(/iPad/i)) ||
		(navigator.userAgent.match(/BlackBerry/))
    );
}

if(!isMobile() && $(window).width() > 768){
    homeParallax();
}

//Scroll events
$(window).scroll(function() {

    if(!isMobile() && $(window).width() > 768){
        homeParallax();
    }

});
