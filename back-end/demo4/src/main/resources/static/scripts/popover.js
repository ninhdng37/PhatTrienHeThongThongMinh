const bagIcons = $(".bag-popover");
const bagPopover = $("#bag-detail-popover");
const signInIcons = $(".signin-popover");
const signInPopover = $("#signin-popover");

const allPopovers = $(".my-popover");
// when hover to user's bag icon
let saveTimeout;

bagIcons.on("mouseenter", function () {
  console.log(this);
  console.log("bagIcon mouseenter");
  allPopovers.removeClass("active");
  bagPopover.addClass("active");

  saveTimeout = setTimeout(() => {
    bagPopover.removeClass("active");
  }, 3000);
});

bagPopover.mouseenter(() => {
  console.log("bagPopover mouseenter");
  allPopovers.removeClass("active");
  clearTimeout(saveTimeout);
  bagPopover.addClass("active");
});

bagPopover.mouseleave(() => {
  console.log("bagPopover mouseleave");

  bagPopover.removeClass("active");
});

// when hoverr to sign in

let signInSaveTimeOut;
signInIcons.mouseenter(() => {
  console.log("signIn icon mousenter");
  allPopovers.removeClass("active");
  signInPopover.addClass("active");

  signInSaveTimeOut = setTimeout(() => {
    signInPopover.removeClass("active");
  }, 3000);
});

signInPopover.mouseenter(() => {
  console.log("signin popover mouseenter");
  allPopovers.removeClass("active");
  clearTimeout(signInSaveTimeOut);
  signInPopover.addClass("active");
});

signInPopover.mouseleave(() => {
  console.log("signIn popover mouse leave");

  signInPopover.removeClass("active");
});


  
  /* 1. Visualizing things on Hover - See next part for action on click */
  $('#stars li').on('mouseover', function(){
    var onStar = parseInt($(this).data('value'), 10); // The star currently mouse on
   
    // Now highlight all the stars that's not after the current hovered star
    $(this).parent().children('li.star').each(function(e){
      if (e < onStar) {
        $(this).addClass('hover');
      }
      else {
        $(this).removeClass('hover');
      }
    });
    
  }).on('mouseout', function(){
    $(this).parent().children('li.star').each(function(e){
      $(this).removeClass('hover');
    });
  });
  
  const starNumberInput = $('#starNumber');
  /* 2. Action to perform on click */
  $('#stars li').on('click', function(){
    var onStar = parseInt($(this).data('value'), 10); // The star currently selected
    var stars = $(this).parent().children('li.star');
    
    for (i = 0; i < stars.length; i++) {
      $(stars[i]).removeClass('selected');
    }
    
    for (i = 0; i < onStar; i++) {
      $(stars[i]).addClass('selected');
    }
    
    // JUST RESPONSE (Not needed)
    var ratingValue = parseInt($('#stars li.selected').last().data('value'), 10);
    starNumberInput.attr('value',ratingValue);
	 console.log(starNumberInput);
    
    
  });
//	 	const startList = $('.start');
//	  	const starNumberInput = $('#starNumber');
//	  	startList.children().on('click', function(e) {
//	  		starNumberInput.value = e.target.attr('data-value');
//	  		console.log(starNumberInput);
//	  	})
	  	

  
