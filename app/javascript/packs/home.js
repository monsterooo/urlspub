function initScroll() {
  const items = document.querySelectorAll(".urls-item");
  items.forEach((item) => {
    const ul = item.querySelector("ul");
    if (!ul) return;
    const onScroll = (e) => {
      const { target } = e;
      const view = target.parentNode.querySelector(".urls-view");
      const scrollHeight = target.scrollHeight;
      const clientHeight = ul.clientHeight;
      const canScrollHeight = scrollHeight - clientHeight;
      view.style.width = (ul.scrollTop / canScrollHeight) * 100 + "%";
    };
    ul.removeEventListener("scroll", onScroll);
    ul.addEventListener("scroll", onScroll);
  });
}
function initMore() {
  $('.urls-more span').off('click')
  $('.urls-more span').click(function() {
    const parent = $(this).parent()
    const elements = $(this).parent().find('span');
    const site = parent.data('site');
    const interval = $(this).data('view');
    const item = $(this).parents('.urls-item');

    elements.removeClass('selected');
    $(this).addClass('selected');
    $.ajax({
      url: '/home/fetch_more',
      type: 'POST',
      data: {
        target: {
          site,
          interval
        }
      },
      success: function(data) {
        item.after(data);
        item.remove();
        initScroll();
        initMore();
      },
      error: function(err) {
        console.log(err);
      }
    })
  })
}

window.addEventListener('load', () => {
  initScroll();
  initMore();
})