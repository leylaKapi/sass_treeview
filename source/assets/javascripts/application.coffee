$(document).ready ->
  $(".tree li").each ->
    $(this).addClass "parent"  if $(this).children("ul").length > 0
    return

  $(".tree li.parent > a").click ->
    $(this).parent().toggleClass "active"
    $(this).parent().children("ul").slideToggle "fast"
    return

  $("#all").click ->
    $(".tree li").each ->
      $(this).toggleClass "active"
      $(this).children("ul").slideToggle "fast"
      return

    return

  return
