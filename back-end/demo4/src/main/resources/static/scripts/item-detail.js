$(".item-detail-carousel").slick({
  slidesToShow: 2,
  slidesToScroll: 1,
  arrows: true,
  draggable: false,
});
const measureNavChildJquery = $(".measure-nav").children();
$(".measuring-tips-content").addClass("d-none");

measureNavChildJquery.click(function (e) {
  measureNavChildJquery.removeClass("active");
  e.target.classList.add("active");
  eId = e.target.id;

  $(".measure-tips-content").children().addClass("d-none");
  if (eId == "child-1") {
    $(".tops-content").removeClass("d-none");
  } else $(".measuring-tips-content").removeClass("d-none");
});

// event orruring when clicking to chose other variations
const layout = $(".layout");
const scrollContainer = $(".scroll-container");
const icon = $(".icon");
const upArrow =
  '<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-up" viewBox="0 0 16 16"><path fill-rule="evenodd" d="M7.646 4.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1-.708.708L8 5.707l-5.646 5.647a.5.5 0 0 1-.708-.708l6-6z"/></svg>';
const downArrow =
  '<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-down" viewBox="0 0 16 16"><path fill-rule="evenodd" d="M1.646 4.646a.5.5 0 0 1 .708 0L8 10.293l5.646-5.647a.5.5 0 0 1 .708.708l-6 6a.5.5 0 0 1-.708 0l-6-6a.5.5 0 0 1 0-.708z"/></svg>';
$(".color-name-container").click(() => {
  layout.addClass("active");
  scrollContainer.addClass("active");

  icon.html(upArrow);
});

layout.click(() => {
  layout.removeClass("active");
  scrollContainer.removeClass("active");
  icon.html(downArrow);
});

window.addEventListener("scroll", function () {
  const header = document.getElementById("header");
  header.classList.toggle("sticky", window.scrollY > 100);
  const bagPopover = $(".my-popover");
  if (header.classList.contains("sticky")) {
    bagPopover.addClass("active-1");
  } else {
    bagPopover.removeClass("active-1");
  }
  if (layout.hasClass("active")) {
    layout.removeClass("active");
    scrollContainer.removeClass("active");
    icon.html(downArrow);
  }
});

// you may also like
$(".carousel").slick({
  infinite: true,
  slidesToShow: 4,
  slidesToScroll: 1,
  arrows: true,
  nextArrow:
    '<button type="button" class="btn next-arrow" ><svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-chevron-compact-right" viewBox="0 0 16 16"><path fill-rule="evenodd" d="M6.776 1.553a.5.5 0 0 1 .671.223l3 6a.5.5 0 0 1 0 .448l-3 6a.5.5 0 1 1-.894-.448L9.44 8 6.553 2.224a.5.5 0 0 1 .223-.671z"/></svg></button>',
  prevArrow:
    '<button type="button" class="btn prev-arrow"><svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-chevron-compact-left" viewBox="0 0 16 16"><path fill-rule="evenodd" d="M9.224 1.553a.5.5 0 0 1 .223.67L6.56 8l2.888 5.776a.5.5 0 1 1-.894.448l-3-6a.5.5 0 0 1 0-.448l3-6a.5.5 0 0 1 .67-.223z"/></svg></button>',
});


  