var Reditor = {
  previewHTML: "<div class=\"photo-panel\"><div class=\"body\">",
  previewEndHTML: "</div></div>",

  init: function (content, name) {
    var editor = "";
    editor += "<ul class=\"tab\"><li><a class=\"tablinks active\" onclick=\"switchTab(event, 'content');\">编辑</a></li><li><a class=\"tablinks\" onclick=\"switchTab(event, 'preview');\">预览</a></li>";
    editor += "<ul class=\"utils\">";
    editor += "<li class=\"fa fa-bold\" onclick=\"insertFontBold();\" accesskey=\"b\"></li>";
    editor += "<li class=\"fa fa-italic\" onclick=\"insertFontItalic();\" accesskey=\"i\"></li>";
    editor += "<li class=\"fa fa-camera-retro\" onclick=\"insertPhoto();\" accesskey=\"p\"></li>";
    editor += "<li class=\"fa fa-list\" onclick=\"insertUnorderedList();\" accesskey=\"u\"></li>";
    editor += "<li class=\"fa fa-link\" onclick=\"insertLink();\" accesskey=\"l\"></li>";
    editor += "<li id=\"full-screen\" class=\"fa fa-chevron-up\" onclick=\"fullScreen();\" accesskey=\"=\"></li>";
    editor += "<li id=\"normal-screen\" class=\"hidden fa fa-chevron-down\" onclick=\"normalScreen();\" accesskey=\"-\"></li>";
    editor += "</ul></ul>";
    editor += "<div id=\"content\" class=\"tabcontent\" style=\"display: block;\">";
    editor += "<textarea class=\"form-control\" name="+name+" id=\"post_body\"></textarea>";
    editor += "</div>";
    editor += "<div id=\"preview\" class=\"tabcontent\" style=\"display: none;\">";
    editor += this.previewHTML;
    editor += "<div id=\"previewCotent\"></div>";
    editor += this.previewEndHTML;
    editor += "</div>";

    $(".editor").html(editor);
    $("#post_body").html(content);
  }
}

function insertFontBold() {
  var ele = $("#post_body");
  ele.val(ele.val() + "****\n");
}

function insertFontItalic() {
  var ele = $("#post_body");
  ele.val(ele.val() + "**\n");
}

function insertPhoto() {
  var ele = $("#post_body");
  var appendHtml = '<figure>\n<img src="图片链接" />\n<figcaption>简介</figcaption>\n</figure>\n';
  ele.val(ele.val() + appendHtml);
}

function insertLink() {
  var ele = $("#post_body");
  ele.val(ele.val() + "[超级链接](http://)\n");
}

function insertUnorderedList() {
  var ele = $("#post_body");
  ele.val(ele.val() + "- \n");
}

function fullScreen() {
  $(".navbar").css("display", "none");
  $(".editor").css("position", "absolute");
  $(".editor").css("top", "0px");
  $(".editor").css("left", "0px");
  $(".editor").css("width", "100%");
  $(".editor").css("height", "100%");
  $(".tabcontent").css("height", "90%");
  $("#full-screen").addClass("hidden");
  $("#normal-screen").removeClass("hidden");
}

function normalScreen() {
  $(".navbar").css("display", "block");
  $(".editor").css("position", "relative");
  $("#preview").css("height", "500px");
  $("#normal-screen").addClass("hidden");
  $("#full-screen").removeClass("hidden");
}
