App.Router.map ->
  @resource 'posts', { path: '/' }

App.PostsRoute = Ember.Route.extend
  model: ->
    @store.find 'post'
