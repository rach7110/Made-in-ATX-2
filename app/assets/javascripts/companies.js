$(document).ready(function(){
  $('.block').hide();

  $('.company').mouseenter(function(){
    $(this).css("font-weight", "bold");
  }).mouseleave(function(){
    $(this).css("font-weight", "normal");
  });

// / Hides-shows the company logo and info, called 'block' class, on mouse hover:
  // $('.title').click(function(){
  //   $(this).next().slideToggle();
  // });

// Hides-shows the company logo and info, called 'block' class, on mouse enter and leave:
 $('.company').mouseenter(function(){
    $(this).children().show('.block');
  }).mouseleave(function(){
    $('.block').hide();
  });

});






