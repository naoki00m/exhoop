$(function(){
  $("#search-area").hide();
  $("#search-btn").on("click", function() {
    $("#search-area").slideToggle();
    $("#search-area").toggleClass("active");
  });
});
