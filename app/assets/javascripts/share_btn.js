$(function() {
  $(".content__show__box__bottom__icons__share__area").hide();
  $(".content__show__box__bottom__icons__share").on("click", function() {
    $(".content__show__box__bottom__icons__share__area").toggle();
  });
  $(document).on("click touchend", function(){
    if (!$(event.target).closest(".content__show__box__bottom__icons__share").length) {
      $(".content__show__box__bottom__icons__share__area").hide();
    }
  });
});