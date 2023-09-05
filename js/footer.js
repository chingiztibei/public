var prevScrollpos = window.pageYOffset;

window.addEventListener('scroll', function() {
  var currentScrollPos = window.pageYOffset;
  var footer = document.getElementById('footer');

  if (prevScrollpos > currentScrollPos) {
    footer.style.bottom = '0';
  } else {
    footer.style.bottom = '-68px';
  }

  prevScrollpos = currentScrollPos;
});
