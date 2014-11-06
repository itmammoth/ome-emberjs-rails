App.PostView = Ember.View.extend
  willAnimateIn: ->
    @$().css("opacity", 0)

  animateIn: (done) ->
    @$().fadeTo(200, 1).effect('highlight', {}, 500, done)
