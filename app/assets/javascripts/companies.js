

$(document).ready(function(){
  $('.company').mouseenter(function(){
    $(this).css("font-weight", "bold");
  }).mouseleave(function(){
    $(this).css("font-weight", "normal");
  });
  $('.company').click(function(){
    $(this).next().slideToggle();
  });
});






