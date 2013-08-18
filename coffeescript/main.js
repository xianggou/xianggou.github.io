(function() {
  $(function() {
    var n;
    if (document.all && !document.querySelector) {
      alert('体验最佳浏览效果， 请使用非IE内核浏览器。IE Sucks! 本站推荐使用最新Google Chrome 浏览器 https://www.google.com/intl/zh-CN/chrome/browser/');
    }
    n = 0;
    return setInterval(function() {
      n += 1;
      $('.show .content p').removeClass('highlight');
      $($('.show .content p').get(n % 9)).addClass('highlight');
      return $('.show ul.pics li:eq(1)').animate({
        left: '-=254px'
      }, 500, function() {
        $('.show ul.pics').append($('.show ul.pics li:first').css('left', 0));
        return $('.show ul.pics li:first').css('left', 0);
      });
    }, 3000);
  });

}).call(this);
