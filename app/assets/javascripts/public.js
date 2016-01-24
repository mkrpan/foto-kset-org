//= require application
//= require jquery.transmit.min
//= require lightbox.min

$(document).ready(function() {
    $("#TecajContainer").mouseenter(function() {
        $("#TecajModalButton").animate({
            left: "0vw"
        }, 200);
    }), $("#TecajContainer").mouseleave(function() {
        $("#TecajModalButton").animate({
            left: "-100vw"
        }, 500);
    }), $("#RadionicaContainer").mouseenter(function() {
        $("#RadionicaModalButton").animate({
            right: "0vw"
        }, 200);
    }), $("#RadionicaContainer").mouseleave(function() {
        $("#RadionicaModalButton").animate({
            right: "-100vw"
        }, 500);
    }), $(window).scroll(function() {
      if ($(this).scrollTop() > 500) {
        $("#BackToTop").fadeIn(400);
      }
      else {
        $("#BackToTop").fadeOut(400);
      }
    }), $("#BackToTop").click(function() {
        return $("html, body").animate({
            scrollTop: 0
        }, 1e3), !1;
    }), $("#FollowUsFooter img").hover(function() {
        $(this).transition({
            scale: 1.5
        });
    }, function() {
        $(this).transition({
            scale: 1
        });
    }), $(".Shortcut").click(function(o) {
        o.preventDefault();
        var t = $(this).attr("href");
        t = $("" + t).offset().top, $("html, body").animate({
            scrollTop: t - 300
        }, 2e3);
    }), $(".ClosePrijaveModal").click(function() {
        $("#TecajModal, #RadionicaModal").modal("hide");
    });
});
