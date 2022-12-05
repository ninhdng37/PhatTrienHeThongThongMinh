// when clicking to buy item
const bagIcon = $(".bag-popover");
const bagIcon1 = $(".bag-popover-sticky");
const bagPopover = $("#popover-test");
let saveTimeout;

bagIcon1.mouseenter(() => {
  console.log(bagIcon1);
  bagPopover.addClass("active");

  saveTimeout = setTimeout(() => {
    bagPopover.removeClass("active");
  }, 3000);
});

bagIcon.mouseenter(() => {
  bagPopover.addClass("active");

  saveTimeout = setTimeout(() => {
    bagPopover.removeClass("active");
  }, 3000);
});

bagPopover.mouseenter(() => {
  clearTimeout(saveTimeout);
  bagPopover.addClass("active");
});

bagPopover.mouseleave(() => {
  clearTimeout(saveTimeout);

  bagPopover.removeClass("active");
});
