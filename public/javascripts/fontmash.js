function alignTables() {
  var pos = $("table#first").offset();
  pos.top -= 20;
  $("table#second").css(pos);
}

function mashFonts() {
  if ($("input#font1").val() && $("input#font2").val()) {
    $("table#first").css("font-family", $("input#font1").val());
    $("table#second").css("font-family", $("input#font2").val());
  }
}
