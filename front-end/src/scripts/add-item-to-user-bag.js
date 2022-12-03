 // when clicking to buy item
 const bagIcon = $("#bag-popover");
 const bagPopover = $("#popover-test");
 let saveTimeout;
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