// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require reditor
//= require_tree .

$(function () {

  var $goTop = $('.go-top');
  // go top
  $goTop.on('click', function () {
    scrollPos = $(window).scrollTop();
    $('body').css({'margin-top': -scrollPos + 'px', 'overflow-y': 'scroll'});
    $(window).scrollTop(0);
    $('body').css('transition', 'all is ease');
    $('body').css('margin-top', '0');
    $( "body" ).on( "webkitTransitionEnd transitionend msTransitionEnd oTransitionEnd" , function (){
      $( "body" ).css( "transition" , "none" );
    });
  })

  // 绑定滚动事件
  window.onscroll = function scroll() {

    var Y = $(window).scrollTop(); // 获取滚动高度

    if(Y >= 1000) {
      $goTop.css('display', 'block'); // 显示
    } else {
      $goTop.css('display', 'none'); // 隐藏
    }

    var footerOffsetTop = $('.footer').offset().top;
    if(Y >= footerOffsetTop - 850) {
      $goTop.css('bottom', '180px');
    }
  }

})

function switchTab (evt, tabName) {
    // Declare all variables
    var i, tabcontent, tablinks;

    // Get all elements with class="tabcontent" and hide them
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }

    // Get all elements with class="tablinks" and remove the class "active"
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }

    // Show the current tab, and add an "active" class to the link that opened the tab
    document.getElementById(tabName).style.display = "block";
    evt.currentTarget.className += " active";

    if(tabName == 'preview') {
        var content = $('#post_body').val();
        var $preview = $('#previewCotent');
        $.ajax({
            url: '/application/preview',
            method: 'POST',
            data: { 'content': content },
            dataType: 'JSON',
            cache: false,
            async: false,
            success: function(data) {
                $preview.html(data.data);
            }
        });
    }
}
