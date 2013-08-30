$(document).ready(function(){
  // Hides the company info block to start:
  // $('.block').hide();

  $('.company').mouseenter(function(){
    $(this).css("font-weight", "bold");
  }).mouseleave(function(){
    $(this).css("font-weight", "normal");
  });

// / Mouse hover: Hides-shows the company logo and info, called 'block' class
  // $('.title').click(function(){
  //   $(this).next().slideToggle();
  // });

// Mouse enter/leave: Hides-shows the company logo and info, called 'block' class
 // $('.company').mouseenter(function(){
 //    $(this).children().show('.block');
 //  }).mouseleave(function(){
 //    $('.block').hide();
 //  });

});






