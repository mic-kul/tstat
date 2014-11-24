$ ->
  playerSource = new Bloodhound({
    datumTokenizer: (d) ->
      Bloodhound.tokenizers.whitespace(d)
    queryTokenizer: Bloodhound.tokenizers.whitespace,
    remote: "/players/search/?name=%QUERY"
  })
  playerSource.initialize()

  guildSource = new Bloodhound({
    datumTokenizer: (d) ->
      Bloodhound.tokenizers.whitespace(d)
    queryTokenizer: Bloodhound.tokenizers.whitespace,
    remote: "/guilds/search/?name=%QUERY"
  })
  guildSource.initialize()

  $("#search").typeahead(null, {
    name: "player",
    displayKey: 'name',
    source: playerSource.ttAdapter(),
    templates: {
      header: "<h4 class='ac'>Players<\/h4>",
      empty: [
        '<div class="empty-message">',
        'no players found',
        '</div>'
      ].join('\n'),
      suggestion: (data) ->
        '<p><strong>' + data.name + "</strong>" + ' (lvl: ' + data.level.toString() + '), ' + data.vocation_name + ' from ' + data.world_name + '</p>'
  }
  },
    {
      name: "guild",
      displayKey: 'name',
      source: guildSource.ttAdapter(),
      templates: {
        header: "<h4 class='ac'>Guilds<\/h4>",
        empty: [
          '<div class="empty-message">',
          'no guilds found',
          '</div>'
        ].join('\n'),
        suggestion: (data) ->
          '<p><strong>' + data.name + '</strong> from ' + data.world_name + '</p>';
      }
    })
  .bind('typeahead:selected', (obj, datum, name) ->
    switch name
      when "player" then window.location.href= '/player/' + datum.name;
      when "guild" then window.location.href= '/guild/' + datum.name;
      else 0

  )