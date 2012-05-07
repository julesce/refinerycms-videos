// JavaScript Document

$(document).ready(function() {
	
  $(".tilevideo a.ytlink").each(function(index) {
    if ($(this).attr("complete") != "true") {
      var str = $(this).attr("href");
      var ytid = str.substring(str.lastIndexOf("/") + 1, str.length);
      str = "http://www.youtube.com/embed/" + ytid + "?rel=0";
      $(this).attr("href", str);
      $(this).attr("complete", "true");
      $(this).html($(this).html() + "<div class='ytvid_img'><img src='http://img.youtube.com/vi/" + ytid + "/0.jpg' width='290' /></div><img src='/assets/video_play.png' class='pic_bg' />")
    }
  });

  $(".tilevideo a").colorbox({iframe:true, innerWidth:640, innerHeight:390, transition:"elastic", opacity:"0.6"});

});