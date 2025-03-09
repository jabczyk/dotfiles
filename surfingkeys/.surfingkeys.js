api.unmap("t");
api.unmap("T");

api.Hints.style(
  `font-size: 11px;
  font-family: sans-serif;
  letter-spacing: 1px;`
);

api.mapkey(";g", "Genius", () => {
  if (window.location.hostname !== "www.youtube.com") {
    return;
  }

  const title = document.title.replace("- YouTube", "");
  const query = `site:genius.com ${title}`;
  const url = `https://www.google.com/search?q=${query}`;
  window.open(url, "_blank").focus();
});

api.unmapAllExcept(['j','k'], /linear.app/);
api.unmapAllExcept([], /geotastic.net/);
api.unmapAllExcept([], /docs.google.com/);
api.unmapAllExcept([], /www.nytimes.com/);
api.unmapAllExcept([], /brew.sh/);
