alignTables = () ->
  pos = $('table#first').offset()
  pos.top -= 20
  $('table#second').css pos

mashFonts = () ->
  $('table#first').css 'font-family', $('input#font1').val()
  $('table#second').css 'font-family', $('input#font2').val()

$ alignTables
$(window).resize alignTables

$('input#go').click mashFonts

$('input#swap').click ->
  temp = $('input#font1').val()
  $('input#font1').val $('input#font2').val()
  $('input#font2').val temp

  mashFonts()

if navigator.platform.indexOf('Mac') == -1
  $('input#font1').val 'Arial'
  $('input#font2').val 'Times New Roman'
  mashFonts()
