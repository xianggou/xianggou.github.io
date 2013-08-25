$ ->
  if (document.all && !document.querySelector)
    alert('体验最佳浏览效果， 请使用非IE内核浏览器。IE Sucks! 本站推荐使用最新Google Chrome 浏览器 https://www.google.com/intl/zh-CN/chrome/browser/')


  n = 0
  setInterval ->
    n += 1
    $('.show .content p').removeClass('highlight')
    $($('.show .content p').get(n % 9)).addClass 'highlight'

    if n % 9 == 1
      $('.show ul.pics li:eq(1)').css("left", '-254px')
      $('.show ul.pics li:eq(0)').animate
        top: '-=382px'
      , 1500, ->
        $('.show ul.pics').append $('.show ul.pics li:first')
        $('.show ul.pics li:first').css("left", 0)

    else if n % 9 == 0
      $('.show ul.pics li:eq(1)').css('left', '-254px')
      $('.show ul.pics li:eq(1)').animate
        top: '+=382px'
      , 1500, ->
        $('.show ul.pics').append $('.show ul.pics li:first').css('top', 0)
        $('.show ul.pics li:first').css("left", 0)

    else
      $('.show ul.pics li:eq(1)').animate
        left: '-=254px'
      , 500, ->
        $('.show ul.pics').append $('.show ul.pics li:first').css('left', 0)
        $('.show ul.pics li:first').css('left', 0)

  , 3000

