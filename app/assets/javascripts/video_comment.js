$(function() {
  var $textarea = $('#comment-text');
  var lineHeight = parseInt($textarea.css('lineHeight'));
  $textarea.on('input', function(evt) {
    var lines = ($(this).val() + '\n').match(/\n/g).length;
    $(this).height(lineHeight * lines);
  });
});

$(function(){
  $(".content__show__comment__add__btn").hide();
  $("#comment-text").on("click", function() {
    $(".content__show__comment__add__btn").show();
  });
  $(".content__show__comment__add__btn__cansel").on("click", function() {
    $(".content__show__comment__add__btn").hide();
  });
});