window.App = Ember.Application.create()

# Ajax送信時にトークンを送信する（トークンがないとRails側で認証エラーになる）
$ ->
  token = $('meta[name="csrf-token"]').attr('content')
  $.ajaxPrefilter (options, originalOptions, xhr) ->
    xhr.setRequestHeader('X-CSRF-Token', token)
