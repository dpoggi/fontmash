var FontMash = {
  alignTables: function() {
    var pos = $("table#first").offset();
    pos.top -= 20;
    $("table#second").css(pos);
  },
  mashFonts: function() {
    if ($("input#font1").val() && $("input#font2").val()) {
      $("table#first").css("font-family", $("input#font1").val());
      $("table#second").css("font-family", $("input#font2").val());
    }
  },
  swapFonts: function() {
    var tmp = $("input#font1").val();
    $("input#font1").val($("input#font2").val());
    $("input#font2").val(tmp);
  },
  compatibility: function() {
    $("input#font1").val("Arial");
    $("input#font2").val("Times New Roman");
  }
};
