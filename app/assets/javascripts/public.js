//= require application
//= require jquery.transmit.min
//= require lightbox
//= require jquery.cookie
//= require phrasing

$(document).ready(function(){
  $(window).load(function () {
      $('#preloader').fadeOut('slow', function () { $(this).remove(); });
  });

  $("#TecajContainer").mouseenter( function(){
    $("#TecajModalButton").animate({left: "0vw"},200);
  });

  $("#TecajContainer").mouseleave( function(){
    $("#TecajModalButton").animate({left: "-100vw"},500);
  });

  $("#RadionicaContainer").mouseenter( function(){
    $("#RadionicaModalButton").animate({right: "0vw"},200);
  });

  $("#RadionicaContainer").mouseleave( function(){
    $("#RadionicaModalButton").animate({right: "-100vw"},500);
  });

  $(window).scroll( function(){
    if ( $(this).scrollTop() > 500 ) {
      $("#BackToTop").fadeIn(400);
    }
    else{
      $("#BackToTop").fadeOut(400);
    }
  });

  $('#BackToTop').click(function(){
    $("html, body").animate({ scrollTop: 0 }, 1000);
    return false;
  });

  $("#FollowUsFooter img").hover(
    function(){
      $(this).transition({scale:1.5});
    },
    function(){
      $(this).transition({scale:1.0});
    });

  $(".Shortcut").click(function(e){
    e.preventDefault();
    var divID = $(this).attr("href");
    positionFromTop = $("" + divID).offset().top;
    var offset = $(window).height() / 2 - $("" + divID).height() / 2;
    var scrollValue = positionFromTop - offset;
    $("html, body").animate({ scrollTop: scrollValue }, 2000);
  });

  $(".ClosePrijaveModal").click(function(){
    $("#TecajModal, #RadionicaModal").modal("hide");
  });
});
