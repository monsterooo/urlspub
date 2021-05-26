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


window.addEventListener('load', () => {
  initScroll();
})