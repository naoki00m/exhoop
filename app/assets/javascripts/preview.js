$(function(){
  $fileField = $('#upload-video')
  
  $($fileField).on('change', $fileField, function(e) {
    file = e.target.files[0]
    reader = new FileReader(),
    $preview = $(".content__new__video");

    reader.onload = (function(file) {
      return function(e) {
        $preview.empty();
        $preview.append($('<video>').attr({
          src: e.target.result,
          width: "100%",
          class: "preview",
          autoplay: "autoplay",
          loop: "loop",
          controls: "controls",
          playsinline: "true", // スマホで動画投稿した際にauto再生
        }));
      };
    })(file);
    reader.readAsDataURL(file);
  });
});
