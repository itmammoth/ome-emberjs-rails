Ember.Handlebars.registerBoundHelper 'formatTime', (time) ->
  moment(time).format('YYYY-MM-DD HH:mm:ss')
