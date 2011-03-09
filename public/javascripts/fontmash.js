function mashFonts() {
  if ($("input#font1").val() && $("input#font2").val()) {
    $("div#first").css("font-family", $("input#font1").val());
    $("div#second").css("font-family", $("input#font2").val());
  }
}
