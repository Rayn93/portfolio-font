var $wysokosc = $(window).height();


//STICKY MENU

$(window).scroll(function() {
    if ($(this).scrollTop() > 1){
        $('#header-top').addClass("sticky");
    }
    else{
        $('#header-top').removeClass("sticky");
    }
});


//GŁÓWNA FUNKCJA

$(document).ready(function () {


// $('.scroll, .scroll a').click(function () {
//
//     var page = $(this).attr('href');
//
//     var params = {
//
//         duration: 1000,
//         easing: 'swing'
//     };
//     $.scrollTo(page, params);
//     return false;
// });


$('a[href^="#"]').on('click', function(event) {
    var target = $(this.getAttribute('href'));
    if( target.length ) {
        event.preventDefault();
        $('html, body').stop().animate({
            scrollTop: target.offset().top
        }, 1000);
    }
});

//PREELOADER

    Pace.on("done", function(){
        $(".cover").fadeOut(2000);
    });

//SCRIPTS FOR PROJECTS SUBPAGES

    if($('body').hasClass('projekty')){
        $('select').niceSelect();
    }


// OSKRYPTOWANIE DLA MENU

var $height = $(window).height();

$("#header-top .traggle-menu").css("height", $height);

$("#header-top .burger").click(function () {
    $(".traggle-menu").show("slide", { direction: "left" }, 500);
});

$(".close").click(function () {
    $(".traggle-menu").hide("slide", "right", 500);
});

//home section

    // $("#home nav ul li:eq(0) a").addClass("active");

    $("#home").css("height", $wysokosc);

    $("#home").bgswitcher({
        images: ["img/slide1.jpg", "img/slide2.jpg", "img/slide2.jpg", "img/slide3.jpg", "img/slide4.jpg", "img/slide5.jpg"],
        effect: "fade", // fade, blind, clip, slide, drop, hide
        interval: 5000, // Interval of switching
        loop: true, // Loop the switching
        duration: 3000, // Effect duration
        easing: "swing" // Effect easing
    });

    $("#imie").css("margin-top", ($wysokosc / 2) - 200);



//SLAJDER Z TECHNOLOGIAMI

    $('#da-slider').cslider({

        current: 0,
        // index of current slide

        bgincrement: 50,
        // increment the background position
        // (parallax effect) when sliding

        autoplay: false,
        // slideshow on / off

        interval: 4000
        // time between transitions

    });

    $(function () {

        $('#da-slider').cslider();

    });

//KONIEC SLAJDERU

//Testimonials
    $('.testimonials-container').backstretch("./img/backgrounds/1.jpg");

    $('a[data-toggle="tab"]').on('shown.bs.tab', function(){
        $('.testimonials-container').backstretch("resize");
    });

});


//PARALAX

$(window).scroll(function () {

    var wScroll = $(this).scrollTop();

    $("#imie").css({
        "transform": "translate(0," + wScroll / 3.8 + "%)"
    });

    if (wScroll > $("#kim").offset().top - $wysokosc / 2) {

        $("#kim .col-md-6").each(function () {

            $("#kim .col-md-6").addClass("wysuniecie");
        });
    }
    else {
        $("#kim .col-md-6").each(function () {

            $("#kim .col-md-6").removeClass("wysuniecie");
        });

    }

    if (wScroll > $("#technologie").offset().top - $wysokosc / 1.5) {

        $("#technologie .parallax").each(function () {

            $("#technologie .parallax").addClass("wysuniecie");
        });
    }
    else {
        $("#technologie .parallax").each(function () {

            $("#technologie .parallax").removeClass("wysuniecie");
        });

    }

    if (wScroll > $("#projekty .parallax").offset().top - $wysokosc / 1.5) {

        $("#projekty .parallax").each(function () {
            $("#projekty .parallax").addClass("wysuniecie");
        });
    }
    else {
        $("#projekty .parallax").each(function () {

            $("#projekty .parallax").removeClass("wysuniecie");
        });

    }

    if (wScroll > $("#testimonials .parallax").offset().top - $wysokosc / 1.5) {

        $("#testimonials .parallax").each(function () {
            $("#testimonials .parallax").addClass("wysuniecie");
        });
    }
    else {
        $("#testimonials .parallax").each(function () {
            $("#testimonials .parallax").removeClass("wysuniecie");
        });

    }

    if (wScroll > $("#blog .parallax").offset().top - $wysokosc / 1.5) {

        $("#blog .parallax").each(function () {
            $("#blog .parallax").addClass("wysuniecie");
        });
    }
    else {
        $("#blog .parallax").each(function () {

            $("#blog .parallax").removeClass("wysuniecie");
        });

    }


//PARALAX SEKCJA Z PROJEKTAMI

    if (wScroll > $("#projekty .row1").offset().top - $wysokosc - 300) {

        var $offset = Math.min(0, wScroll - $("#projekty .row1").offset().top + $wysokosc - 700);

        $("#projekty .row1 .parallax_left").css({'transform': 'translateX('+ $offset +'px)'});
        // $("#projekty .row1 .parallax_right").css({'transform': 'translateX('+ Math.abs($offset1) +'px)'});
    }

    if (wScroll > $("#projekty .row2").offset().top - $wysokosc - 300) {

        var $offset = Math.min(0, wScroll - $("#projekty .row2").offset().top + $wysokosc - 550);

        $("#projekty .row2 .parallax_right").css({'transform': 'translateX('+ Math.abs($offset) +'px)'});
    }

    if (wScroll > $("#projekty .row3").offset().top - $wysokosc - 300) {

        var $offset = Math.min(0, wScroll - $("#projekty .row3").offset().top + $wysokosc - 550);

        $("#projekty .row3 .parallax_left").css({'transform': 'translateX('+ $offset +'px)'});
    }

    if (wScroll > $("#projekty .row4").offset().top - $wysokosc - 300) {

        var $offset = Math.min(0, wScroll - $("#projekty .row4").offset().top + $wysokosc - 550);

        $("#projekty .row4 .parallax_right").css({'transform': 'translateX('+ Math.abs($offset) +'px)'});
    }

    if (wScroll > $("#projekty .row5").offset().top - $wysokosc - 300) {

        var $offset = Math.min(0, wScroll - $("#projekty .row5").offset().top + $wysokosc - 550);

        $("#projekty .row5 .parallax_left").css({'transform': 'translateX('+ $offset +'px)'});
    }


//ZMIANA AKTYWNYCH LINKÓW W NAWIGACJ GŁÓWNEJ

    if($('body').hasClass('glowna')){


        if (wScroll < $("#kim").offset().top - 250) {
            $("nav ul li:eq(0) a, .traggle ul li:eq(0) a").addClass("active");
            $("nav ul li:eq(1) a, .traggle ul li:eq(1) a").removeClass("active");
        }
        if (wScroll > $("#kim").offset().top - 250) {
            $("nav ul li:eq(0) a, .traggle ul li:eq(0) a").removeClass("active");
            $("nav ul li:eq(1) a, .traggle ul li:eq(1) a").addClass("active");
        }
        if (wScroll > $("#technologie").offset().top - 250) {
            $("nav ul li:eq(1) a, .traggle ul li:eq(1) a").removeClass("active");
            $("nav ul li:eq(2) a, .traggle ul li:eq(2) a").addClass("active");
        }
        if (wScroll < $("#technologie").offset().top - 250) {
            $("nav ul li:eq(2) a, .traggle ul li:eq(2) a").removeClass("active");
        }
        if (wScroll > $("#projekty").offset().top - 250) {
            $("nav ul li:eq(2) a, .traggle ul li:eq(2) a").removeClass("active");
            $("nav ul li:eq(3) a, .traggle ul li:eq(3) a").addClass("active");
            $("nav ul .special, .traggle ul .special").addClass("active_border");
        }
        if (wScroll < $("#projekty").offset().top - 250) {
            $("nav ul li:eq(3) a, .traggle ul li:eq(3) a").removeClass("active");
            $("nav ul .special, .traggle ul .special").removeClass("active_border");
        }
        if (wScroll > $("#testimonials").offset().top - 250) {
            $("nav ul li:eq(3) a, .traggle ul li:eq(3) a").removeClass("active");
            $("nav ul li:eq(4) a, .traggle ul li:eq(4) a").addClass("active");
        }
        if (wScroll < $("#testimonials").offset().top - 250) {
            $("nav ul li:eq(4) a, .traggle ul li:eq(4) a").removeClass("active");
        }
        if (wScroll > $("#blog").offset().top - 250) {
            $("nav ul li:eq(4) a, .traggle ul li:eq(4) a").removeClass("active");
            $("nav ul li:eq(5) a, .traggle ul li:eq(5) a").addClass("active");
        }
        if (wScroll < $("#blog").offset().top - 250) {
            $("nav ul li:eq(5) a, .traggle ul li:eq(5) a").removeClass("active");
        }
        if (wScroll > $("#wspolpraca").offset().top - 250) {
            $("nav ul li:eq(5) a, .traggle ul li:eq(5) a").removeClass("active");
            $("nav ul li:eq(6) a, .traggle ul li:eq(6) a").addClass("active");
            $("nav ul .special, .traggle ul .special").removeClass("active_border");
        }
        if (wScroll < $("#wspolpraca").offset().top - 250) {
            $("nav ul li:eq(6) a, .traggle ul li:eq(6) a").removeClass("active");
        }


    }


});





