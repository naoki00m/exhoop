// コメントのテキストボックス
$(function() {
  var $textarea = $('#comment-text');
  var lineHeight = parseInt($textarea.css('lineHeight'));
  $textarea.on('input', function(evt) {
    var lines = ($(this).val() + '\n').match(/\n/g).length;
    $(this).height(lineHeight * lines);
  });
});

// コメントの送信ボタン表示・非表示切り替え
$(function() {
  $(".content__show__comment__add__btn").hide();
  $("#comment-text").on("click", function() {
    $(".content__show__comment__add__btn").show();
  });
  $(".content__show__comment__add__btn__cansel").on("click", function() {
    $(".content__show__comment__add__btn").hide();
  });
});

// 返信のテキストボックス
$(function() {
  var $textarea = $('#reply-text');
  var lineHeight = parseInt($textarea.css('lineHeight'));
  $textarea.on('input', function(evt) {
    var lines = ($(this).val() + '\n').match(/\n/g).length;
    $(this).height(lineHeight * lines);
  });
});

// 返信フォームの表示・非表示切り替え
$(function() {
  var reply = [];
  for ( var i = 1 ; i <= 1000 ; i++ ) {
    reply.push(i);
  }
  $.each(reply, function(index, value) {
    $("#reply-form" + value).hide();
    $("#reply-btn" + value).on("click", function() {
      $("#reply-form" + value).show();
    });
    $(".content__show__comment__bottom__reply__btn__cansel").on("click", function() {
      $("#reply-form" + value).hide();
    });
  });
});

// 返信の表示・非表示切り替え
$(function() {
  var reply = [];
  for ( var i = 1 ; i <= 1000 ; i++ ) {
    reply.push(i);
  }
  var flg = "View";
  $.each(reply, function(index, value) {
    $("#reply-text" + value).hide();
    $("#reply-hide" + value).hide();
    $("#reply-view-hide" + value).on("click", function() {
      $("#reply-text" + value).fadeToggle();
      // 表示文字の切り替え
      $("#reply-view" + value).toggle();
      $("#reply-hide" + value).toggle();
    });
  });
});
