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
