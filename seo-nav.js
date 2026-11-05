(function () {
  var routes = {
    home: '/index.html',
    research: '/research.html',
    papers: '/publications.html',
    service: '/reviewing.html',
    data: '/datasets.html',
    blog: '/blog.html',
    contact: '/contact.html'
  };
  document.querySelectorAll('a[href]').forEach(function (link) {
    var href = link.getAttribute('href') || '';
    var match = href.match(/(?:^|\/)index\.html#(home|research|papers|service|data|blog|contact)$/) || href.match(/^#(home|research|papers|service|data|blog|contact)$/);
    if (match) link.setAttribute('href', routes[match[1]]);
  });
})();
