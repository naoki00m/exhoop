// コメント
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


// 返信
$(function() {
  var $textarea = $('#reply-text');
  var lineHeight = parseInt($textarea.css('lineHeight'));
  $textarea.on('input', function(evt) {
    var lines = ($(this).val() + '\n').match(/\n/g).length;
    $(this).height(lineHeight * lines);
  });
});

$(function(){
  var reply = [];
  for ( var i = 1 ; i <= 100 ; i++ ) {
    reply.push(i);
  }
  $.each(reply, function(index, value) {
    $("#reply-area" + value).hide();
    $("#reply-btn" + value).on("click", function() {
      $("#reply-area" + value).show();
    });
    $(".content__show__comment__bottom__reply__btn__cansel").on("click", function() {
      $("#reply-area" + value).hide();
    });
  });
});