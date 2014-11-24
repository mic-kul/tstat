relativeUrl = "/player"

$("#submit-player-search").on "click", (event) ->
  event.preventDefault();
  name = $("#input-player-search").val()
  $.ajax
    url: relativeUrl + "s/search",
    type: "POST",
    dataType: "json",
    data: {name: name},
    error: (jqXHR, textStatus, errorThrown) ->
      $('body').append "AJAX Error: #{textStatus}"
    success: (data, textStatus, jqXHR) ->
      $("table#search-results tbody").empty();
      $.each data, (key, value) ->
        row = $("<tr>")
        nameCell = $("<td>").text(value.name)
        levelCell = $("<td>").text(value.level)
        vocationCell = $("<td>").text(value.vname);
        worldCell = $("<td>").text(value.worldname)
        row.append(nameCell).append(levelCell).append(vocationCell).append(worldCell)
        $("table#search-results tbody").append(row)


