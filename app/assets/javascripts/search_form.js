$(function(){
  $('.header__search__reset').click(function(){
    $(this).parent().find('input').val('');
  });
});

$(function(){
  $(".header__search__reset").hide();
  $(".header__search__input").on("click", function(){
    $(".header__search__reset").show();
  });
  $(document).on("click touchend", function(){
    if (!$(event.target).closest(".header__search__input").length) {
      $(".header__search__reset").hide();
    }
  });
});