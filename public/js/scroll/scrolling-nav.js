//jQuery to collapse the navbar on scroll
$(window).scroll(function() {

});

//jQuery for page scrolling feature - requires jQuery Easing plugin
$(function() {
    $('a.page-scroll').bind('click', function(event) {
        var $anchor = $(this);
        $('html, body').stop().animate({
            scrollTop: $($anchor.attr('href')).offset().top-20
        }, 1500, 'easeInOutExpo');
        event.preventDefault();
    });
});
