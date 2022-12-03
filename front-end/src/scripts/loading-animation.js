// remove loading animation
const body = $("body");
const loadingAnimation = $(".loading-animation");
body.ready(() => {
  setTimeout(() => {
    loadingAnimation.addClass("d-none");
  }, 2300);
});
