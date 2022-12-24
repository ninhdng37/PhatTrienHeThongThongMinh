window.addEventListener("scroll", function () {
  const header = document.getElementById("header");
  header.classList.toggle("sticky", window.scrollY > 100);
  const bagPopover = $(".my-popover");
  if (header.classList.contains("sticky")) {
    bagPopover.addClass("active-1");
  } else {
    bagPopover.removeClass("active-1");
  }
});
