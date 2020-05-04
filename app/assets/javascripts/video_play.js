$(document).on({
  mouseenter:function(){
    $(this).addClass('on');
    $(this).find('.video')[0].currentTime = $(this).find('.video')[0].initialTime || 0;
    $(this).find('.video')[0].play(); 
  },
  mouseleave:function(){
    $(this).removeClass('on');
    $(this).find('.video')[0].pause();
  }
},'.content__box__video');